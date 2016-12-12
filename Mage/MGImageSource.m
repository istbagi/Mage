//
//  MGImageSource.m
//  Mage
//
//  Created by Istvan Bagi on 30/03/2015.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import "MGImageSource.h"
#import "MGClient.h"
#import "MGImageSearchResultCell.h"
#import "SWGImage_search_item.h"
#import "SWGDisplay_size.h"

static NSString *const kMGImageSearchResultCellId = @"MGImageSearchResultCellId";

@implementation MGImageSource {
    
    NSArray *foundImages;
    NSMutableDictionary *imageCache;
}

- (void)loadImagesForKeywords:(NSString *)keywords {
    
    __weak typeof(self) weakSelf = self;
    // Get images for the keywords given in the completion block
    [[MGClient sharedInstance] getImagesWithCompletitionBlockKeywords:keywords conpletitionBlock:^(SWGImage_search_results *output, NSError *error) {
        
        typeof(self) self = weakSelf;
        BOOL success = (error == nil);
        
        imageCache = [NSMutableDictionary dictionary];
        foundImages = [output.images copy];
        [self.delegate mgImageSource:self loadFinished:success found:[output.result_count integerValue] showing:[output.images count]];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [foundImages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MGImageSearchResultCell *cell = [tableView dequeueReusableCellWithIdentifier:kMGImageSearchResultCellId];
    SWGImage_search_item *item = foundImages[indexPath.row];
    SWGDisplay_size *thumb = item.display_sizes[0];
    
    cell.imageTitle.text = item.title;
    
    if (imageCache[@(indexPath.row)]) {
        
        cell.thumbImageView.image = imageCache[@(indexPath.row)];
    }
    else {
        
        cell.thumbImageView.image = [UIImage imageNamed:@"placeholder-small"];
        if (thumb.uri != nil) {
            
            __weak UIActivityIndicatorView *ind = cell.activityLoadingImage;
            __weak UIImageView *thumbImageView = cell.thumbImageView;
            NSInteger index = indexPath.row;
            dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
            dispatch_async(queue, ^(void) {
                
                [ind startAnimating];
                NSError *error;
                NSURL *url = [NSURL URLWithString:[thumb.uri stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
                NSData *imageData = [NSData dataWithContentsOfURL:url options:NSDataReadingMapped error:&error];
                if (error) NSLog(@"%@", error);
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    [ind stopAnimating];
                    UIImage* _image = [[UIImage alloc] initWithData:imageData];
                    if (_image) {
                        
                        imageCache[@(index)] = _image;
                        thumbImageView.image = _image;
                    }
                });
            });
        }
    }
    
    return cell;
}
@end

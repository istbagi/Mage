//
//  MGImageSource.h
//  Mage
//
//  Created by Istvan Bagi on 30/03/2015.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import "UIKit/UIKit.h"

@class MGImageSource;

@protocol MGImageSourceProtocol
  
- (void)mgImageSource:(MGImageSource *)imageSource loadFinished:(BOOL)success found:(NSInteger)numberOfItems showing:(NSInteger)downloaded;
@end
  
@interface MGImageSource : NSObject <UITableViewDataSource> {
  
}
@property (weak, nonatomic) id<MGImageSourceProtocol> delegate;

- (void)loadImagesForKeywords:(NSString *)keywords;
@end

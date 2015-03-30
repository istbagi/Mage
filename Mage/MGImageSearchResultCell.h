//
//  MGImageSearchResultCell.h
//  Mage
//
//  Created by Istvan Bagi on 30/03/2015.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MGImageSearchResultCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbImageView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityLoadingImage;
@property (weak, nonatomic) IBOutlet UILabel *imageTitle;
@end

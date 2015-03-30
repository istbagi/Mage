//
//  ViewController.m
//  Mage
//
//  Created by Bagi Istvan on 22/03/15.
//  Copyright (c) 2015 Bagi Istvan. All rights reserved.
//

#import "ViewController.h"
#import "MGClient.h"

@implementation ViewController {
  
  IBOutlet MGImageSource *_imageSource;
  __weak IBOutlet UITableView *imagesTableView;
  __weak IBOutlet UIActivityIndicatorView *_loadingIndicator;
  __weak IBOutlet UILabel *_numberOfItemsFound;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  _imageSource.delegate = self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  
  [textField resignFirstResponder];
  return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
  
  [_imageSource loadImagesForKeywords:textField.text];
  [_loadingIndicator startAnimating];
}

- (void)mgImageSource:(MGImageSource *)imageSource loadFinished:(BOOL)success found:(NSInteger)numberOfItems showing:(NSInteger)downloaded {
  
  [_loadingIndicator stopAnimating];
  
  if (success) {
    
    [[[UIAlertView alloc] initWithTitle:@"Mage"
                                message:@"found on getty"
                               delegate:self
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil] show];
    _numberOfItemsFound.text = [NSString stringWithFormat:@"Mage found:%li of that showing:%li", (long)numberOfItems, downloaded];
    [imagesTableView reloadData];
  }
  else {
    
    [[[UIAlertView alloc] initWithTitle:@"Mage"
                                message:@"not found :(\nmodify your search and try again"
                               delegate:self
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil] show];
    
    _numberOfItemsFound.text = @"No Mage found.";
  }
}
@end

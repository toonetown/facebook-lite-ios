//
//  ViewController.m
//  Facebook Lite
//
//  Created by Nathan Toone on 2/19/16.
//  Copyright © 2016 Nathan Toone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

// The URL to load into the controller
#define BASE_URL  [NSURL URLWithString:@"https://www.facebook.com"]
#define BAR_COLOR [UIColor colorWithRed:((27.0)/255.0) \
                                  green:((62.0)/255.0) \
                                   blue:((136.0)/255.0) \
                                  alpha:1.0]

@implementation ViewController

- (nonnull instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    return [super initWithCoder:aDecoder];
}

- (void)viewDidAppear:(BOOL)animated {
    // View just appeared - display our safari view controller
    SFSafariViewController *controller = [[SFSafariViewController alloc] initWithURL:BASE_URL];
    controller.preferredBarTintColor = BAR_COLOR;
    controller.delegate = self;
    [self presentViewController:controller animated:animated completion:nil];
    [super viewDidAppear:animated];
}

@end

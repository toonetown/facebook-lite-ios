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
#define BASE_URL        "https://www.facebook.com"
#define BAR_COLOR_RED   27
#define BAR_COLOR_GREEN 62
#define BAR_COLOR_BLUE  136

@implementation ViewController

- (nonnull instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    return [super initWithCoder:aDecoder];
}

- (void)viewDidAppear:(BOOL)animated {
    // View just appeared - display our safari view controller
    SFSafariViewController *controller = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:@BASE_URL]];
    controller.preferredBarTintColor = [UIColor colorWithRed:((CGFloat)BAR_COLOR_RED/255.0)
                                                       green:((CGFloat)BAR_COLOR_GREEN/255.0)
                                                        blue:((CGFloat)BAR_COLOR_BLUE/255.0)
                                                       alpha:1.0];
    controller.delegate = self;
    [self presentViewController:controller animated:animated completion:nil];
    [super viewDidAppear:animated];
}

@end

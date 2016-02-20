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
NSString *BASE_URL = @"https://www.facebook.com";

@implementation ViewController

- (nonnull instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    if (self = [super initWithURL:[NSURL URLWithString:BASE_URL]]) {
        // Initialization stuff here
    }
    return self;
}

@end

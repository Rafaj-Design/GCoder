//
//  RIPresetFormView.m
//  
//
//  Created by Ondrej Rafaj on 19/10/2015.
//
//

#import "RIPresetFormView.h"


@implementation RIPresetFormView


#pragma mark Initialization

- (instancetype)init {
    self = [super init];
    if (self) {
        CALayer *viewLayer = [CALayer layer];
        [viewLayer setBackgroundColor:CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.4)]; // RGB plus alpha channel
        [self setWantsLayer:YES]; // View's backing store is using a CoreAnimation layer
        [self setLayer:viewLayer];
    }
    return self;
}


@end

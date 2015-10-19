//
//  RIGcodeLibObject.m
//  
//
//  Created by Ondrej Rafaj on 19/10/2015.
//
//

#import "RIGcodeLibObject.h"


@implementation RIGcodeLibObject


#pragma mark Initialization

+ (instancetype)objectWithType:(RIGcodeCommandsType)type {
    return [[self alloc] initWithType:type];
}

- (instancetype)initWithType:(RIGcodeCommandsType)type {
    self = [super init];
    if (self) {
        
    }
    return self;
}




@end

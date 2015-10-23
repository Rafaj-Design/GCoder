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

+ (instancetype)objectWithType:(RIGcodeCommandsType)type andValue:(NSString *)value {
    return [[self alloc] initWithType:type andValue:value];
}

- (instancetype)initWithType:(RIGcodeCommandsType)type andValue:(NSString *)value {
    self = [super init];
    if (self) {
        _commandType = type;
        
        // Handling comments
        if (_commandType == RIGcodeCommandsTypeComment) {
            value = [NSString stringWithFormat:@"( %@ )", value];
        }
        
        _command = value;
    }
    return self;
}

#pragma mark Generating Gcode

- (NSString *)getGCode {
    return _command;
}


@end


@implementation RIGcodeLibObject (Comment)

+ (instancetype)commentWithValue:(NSString *)value {
    return [self objectWithType:RIGcodeCommandsTypeComment andValue:value];
}


@end
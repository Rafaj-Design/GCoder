//
//  RIGcodeLibObject.h
//  
//
//  Created by Ondrej Rafaj on 19/10/2015.
//
//

#import <Foundation/Foundation.h>
#import "RIGcodeCommands.h"


@interface RIGcodeLibObject : NSObject

@property (nonatomic, readonly) RIGcodeCommandsType commandType;
@property (nonatomic, readonly) NSString *comment;

@property (nonatomic, readonly) NSString *command;

+ (instancetype)objectWithType:(RIGcodeCommandsType)type andValue:(NSString *)value;
- (instancetype)initWithType:(RIGcodeCommandsType)type andValue:(NSString *)value;


@end


@interface RIGcodeLibObject (Comment)

+ (instancetype)commentWithValue:(NSString *)value;


@end

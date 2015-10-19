//
//  RIGcodeCommands.h
//  GCoder
//
//  Created by Ondrej Rafaj on 19/10/2015.
//  Copyright (c) 2015 Ridiculous Innovations. All rights reserved.
//


#ifndef GCoder_RIGcodeCommands_h
#define GCoder_RIGcodeCommands_h


#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, RIGcodeCommandsType) {
    RIGcodeCommandsTypeComment,
    RIGcodeCommandsTypeRetractHome,
    RIGcodeCommandsTypeToolSelector,
    RIGcodeCommandsTypeUseMilimiters,
    RIGcodeCommandsTypeUseInches,
    RIGcodeCommandsTypeSafeTravelHeight
};


#endif

//
//  RIGcodeTableViewDataController.h
//  GCoder
//
//  Created by Ondrej Rafaj on 20/10/2015.
//  Copyright © 2015 Ridiculous Innovations. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@class RIGCodeLib;

@interface RIGcodeTableViewDataController : NSObject <NSTableViewDataSource>

- (void)loadSVGFile:(NSString *)path;


@end

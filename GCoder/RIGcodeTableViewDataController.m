//
//  RIGcodeTableViewDataController.m
//  GCoder
//
//  Created by Ondrej Rafaj on 20/10/2015.
//  Copyright © 2015 Ridiculous Innovations. All rights reserved.
//

#import "RIGcodeTableViewDataController.h"
#import "RIGCodeLib.h"


@interface RIGcodeTableViewDataController ()

@property (nonatomic, readonly) RIGCodeLib *gcodeLib;

@end


@implementation RIGcodeTableViewDataController


#pragma mark Initizalization

- (instancetype)init {
    self = [super init];
    if (self) {
        _gcodeLib = [[RIGCodeLib alloc] init];
    }
    return self;
}

#pragma mark Loading files

- (void)loadSVGFile:(NSString *)path {
    [_gcodeLib loadSVGFile:path];
}

#pragma mark Table view data source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return _gcodeLib.lines.count;
}


@end

//
//  RIGCodeLib.m
//  
//
//  Created by Ondrej Rafaj on 19/10/2015.
//
//

#import "RIGCodeLib.h"


@interface RIGCodeLib ()

@property (nonatomic, readonly) NSMutableArray *data;

@end


@implementation RIGCodeLib


#pragma mark Initialization

- (instancetype)initWithPreset:(NSString *)preset {
    self = [super init];
    if (self) {
        _data = [NSMutableArray array];
    }
    return self;
}

#pragma mark Gcode management

- (NSArray *)lines {
    return [_data copy];
}

- (RIGcodeLibObject *)lineAtIndex:(NSUInteger)index {
    if (index < _data.count) {
        return _data[index];
    }
    return nil;
}

- (void)addLine:(RIGcodeLibObject *)line {
    if (!line || ![line isKindOfClass:[RIGcodeLibObject class]]) {
        return;
    }
    [_data addObject:line];
}

- (void)removeLineAtIndex:(NSUInteger)index {
    if (index < _data.count) {
        [_data removeObjectAtIndex:index];
    }
}

- (void)addCommentLine:(NSString *)comment {
    [self addLine:[RIGcodeLibObject commentWithValue:comment]];
}

#pragma mark Gcode generator

- (void)loadSVGFile:(NSString *)path {
    [self addCommentLine:@"Generated with GCoder 0.1"];
    [self addCommentLine:@"By Ridiculous Innovations: http://www.ridiculous-innovations.com"];
}


@end

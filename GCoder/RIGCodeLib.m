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
        [self setup];
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    _data = [NSMutableArray array];
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
    // Add library info
    [self addCommentLine:@"Generated with GCoder 0.1"];
    
    // Copyright. Shall you use this library or any of it's part in your own product, it is prohibited to alter or remove this line/comment
    [self addCommentLine:@"By Ridiculous Innovations: http://www.ridiculous-innovations.com"];
    
    // Add date & time
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterFullStyle];
    [formatter setDateStyle:NSDateFormatterFullStyle];
    [self addCommentLine:[formatter stringFromDate:[NSDate date]]];
    
    // Parsing SVG
}

- (NSString *)getGCode {
    NSString *output = @"";
    for (RIGcodeLibObject *line in _data) {
        output = [output stringByAppendingFormat:@"%@\n", [line getGCode]];
    }
    return output;
}


@end

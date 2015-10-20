//
//  RIGCodeLib.h
//  
//
//  Created by Ondrej Rafaj on 19/10/2015.
//
//

#import "RIGcodeLibObject.h"
#import "RIGcodeCommands.h"


@interface RIGCodeLib : NSObject

- (NSArray *)lines;

- (RIGcodeLibObject *)lineAtIndex:(NSUInteger)index;
- (void)addLine:(RIGcodeLibObject *)line;
- (void)removeLineAtIndex:(NSUInteger)index;

- (void)addCommentLine:(NSString *)comment;

- (void)loadSVGFile:(NSString *)path;


@end

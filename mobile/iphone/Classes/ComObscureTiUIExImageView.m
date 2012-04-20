//
//  ComObscureTiUIExModuleImageView.m
//  tiuiex
//
//  Created by Paul Mietz Egli on 4/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ComObscureTiUIExImageView.h"

@implementation ComObscureTiUIExImageView

- (id)init {
    if (self = [super init]) {
        contentModes = [NSDictionary dictionaryWithObjectsAndKeys:
                        [NSNumber numberWithInt:UIViewContentModeCenter], @"center",
                        [NSNumber numberWithInt:UIViewContentModeScaleAspectFit], @"aspectfit",
                        [NSNumber numberWithInt:UIViewContentModeScaleAspectFill], @"aspectfill",
                        [NSNumber numberWithInt:UIViewContentModeBottom], @"bottom",
                        [NSNumber numberWithInt:UIViewContentModeBottomLeft], @"bottomleft",
                        [NSNumber numberWithInt:UIViewContentModeBottomRight], @"bottomright",
                        [NSNumber numberWithInt:UIViewContentModeLeft], @"left",
                        [NSNumber numberWithInt:UIViewContentModeRight], @"right",
                        [NSNumber numberWithInt:UIViewContentModeTop], @"top",
                        [NSNumber numberWithInt:UIViewContentModeTopLeft], @"topleft",
                        [NSNumber numberWithInt:UIViewContentModeTopRight], @"topright",
                        [NSNumber numberWithInt:UIViewContentModeScaleToFill], @"scalefill",
                        nil];
    }
    return self;
}

- (void)dealloc {
    RELEASE_TO_NIL(contentModes)
    [super dealloc];
}

-(void)setContentMode_:(id)mode {
    NSString * modestr = [TiUtils stringValue:mode];
    UIViewContentMode contentMode = [[contentModes objectForKey:modestr] intValue];
    ((UIImageView *)[self imageView]).contentMode = contentMode ? contentMode : UIViewContentModeScaleAspectFit;
}

- (id)contentMode_ {
    UIViewContentMode mode = ((UIImageView *)[self imageView]).contentMode;
    NSSet * set = [contentModes keysOfEntriesPassingTest:^BOOL(id key, id obj, BOOL *stop) {
        if (mode == [key intValue]) {
            *stop = YES;
            return YES;
        }
        return NO;
    }];
    return [set anyObject];
}

- (id)clipsToBounds_ {
    return [NSNumber numberWithBool:((UIImageView *)[self imageView]).clipsToBounds];
}

-(void)setClipsToBounds_:(id)clips {
    ((UIImageView *)[self imageView]).clipsToBounds = [TiUtils boolValue:clips def:NO];
}

@end

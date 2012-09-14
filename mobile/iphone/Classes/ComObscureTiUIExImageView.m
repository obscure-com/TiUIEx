//
//  ComObscureTiUIExModuleImageView.m
//  tiuiex
//
//  Created by Paul Mietz Egli on 4/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ComObscureTiUIExImageView.h"

@implementation ComObscureTiUIExImageView

@synthesize contentMode;
@synthesize contentModes;

- (id)init {
    if (self = [super init]) {
        self.contentModes = [NSDictionary dictionaryWithObjectsAndKeys:
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
    [super dealloc];
}

-(void)setURLImageOnUIThread:(UIImage*)image {
    [super setURLImageOnUIThread:image];
    [self updateContentMode];
}

-(void)updateContentMode {
    UIViewContentMode curMode = [self contentModeForImageView];
    UIImageView * imageView = [self imageView];
    if (imageView != nil) {
        imageView.contentMode = curMode;
    }
    UIView * container = [self container];
    if (container != nil) {
        for (UIView *view in [container subviews]) {
            UIView *child = [[view subviews] count] > 0 ? [[view subviews] objectAtIndex:0] : nil;
            if (child!=nil && [child isKindOfClass:[UIImageView class]])
            {
                child.contentMode = curMode;
            }
        }
    }
}

-(void)setContentMode_:(id)mode {
    self.contentMode = [TiUtils stringValue:mode];
    [self updateContentMode];
}

- (id)contentMode_ {
    return self.contentMode;
}

- (id)clipsToBounds_ {
    return [NSNumber numberWithBool:((UIImageView *)[self imageView]).clipsToBounds];
}

-(void)setClipsToBounds_:(id)clips {
    ((UIImageView *)[self imageView]).clipsToBounds = [TiUtils boolValue:clips def:NO];
}

-(UIViewContentMode)contentModeForImageView {
    return [[contentModes objectForKey:self.contentMode] intValue];
}

@end

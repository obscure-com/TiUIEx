//
//  ComObscureTiUIExModuleImageView.m
//  tiuiex
//
//  Created by Paul Mietz Egli on 4/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ComObscureTiUIExImageView.h"

@implementation ComObscureTiUIExImageView

-(void)setContentMode_:(id)mode {
    UIViewContentMode contentMode;
    NSString * modestr = [TiUtils stringValue:mode];
    if ([@"aspectfit" isEqualToString:modestr]) {
        contentMode = UIViewContentModeScaleAspectFit;
    }
    else if ([@"aspectfill" isEqualToString:modestr]) {
        contentMode = UIViewContentModeScaleAspectFill;
    }
    else if ([@"center" isEqualToString:modestr]) {
        contentMode = UIViewContentModeCenter;
    }
    else {
        contentMode = UIViewContentModeScaleAspectFit;
    }
    ((UIImageView *)[self imageView]).contentMode = contentMode;
}

-(void)setClipsToBounds_:(id)clips {
    ((UIImageView *)[self imageView]).clipsToBounds = [TiUtils boolValue:clips def:NO];
}

@end

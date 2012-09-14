//
//  ComObscureTiUIExModuleImageView.h
//  tiuiex
//
//  Created by Paul Mietz Egli on 4/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define USE_TI_UIIMAGEVIEW

#import <UIKit/UIKit.h>
#import "TiUIImageView.h"

@interface ComObscureTiUIExImageView : TiUIImageView
@property (nonatomic, strong) NSDictionary * contentModes;
@property (nonatomic, strong) NSString * contentMode;
@end

//
//  TiUIiOSToolbarProxy+Extended.m
//  tiuiex
//
//  Created by Paul Mietz Egli on 6/6/13.
//
//

#import "TiUIiOSToolbarProxy+Extended.h"
#import "Webcolor.h"

@implementation TiUIiOSToolbarProxy (Extended)

- (UIColor *)colorValue:(NSString *)str {
    UIColor * result = nil;
    if ([str hasPrefix:@"#"]) {
        result = [Webcolor colorForHex:[str substringFromIndex:1]];
    }
    else {
        result = [Webcolor webColorNamed:str];
    }
    return result;
}

- (void)setTintColor:(id)color {
    ENSURE_UI_THREAD_1_ARG(color);
    self.toolbar.tintColor = [self colorValue:color];
    [self.toolbar setNeedsDisplay];
    [self replaceValue:color forKey:@"tintColor" notification:YES];
    NSLog(@"set tint color to %@", color);
}

@end

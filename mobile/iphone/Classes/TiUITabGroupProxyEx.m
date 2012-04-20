/**
 * TiUIEx
 * Extensions to Titanium.UI components
 * (c) 2012 Paul Mietz Egli
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */


#import "TiUITabGroupProxyEx.h"
#import "Webcolor.h"

@implementation TiUITabGroupProxyEx

NSString * _tintColor = nil;
NSString * _selectedImageTintColor = nil;

- (void)dealloc {
    RELEASE_TO_NIL(_tintColor)
    RELEASE_TO_NIL(_selectedImageTintColor)
    [super dealloc];
}

- (UIColor *)colorValue:(NSString *)str {
    UIColor * result = nil;
    if ([str hasPrefix:@"#"]) {
        result = [Webcolor colorForHex:[str substringFromIndex:1]];
    }
    else {
        result = [Webcolor webColorNamed:str];
    }
    NSLog(@"color %@ is %@", str, [result description]);
    return result;
}

#pragma mark Properties

- (id)tintColor {
    return _tintColor;
}

- (void)setTintColor:(id)val {
    RELEASE_TO_NIL(_tintColor)
    _tintColor = [val retain];
    [self tabbar].tintColor = [self colorValue:_tintColor];
}

- (id)selectedImageTintColor {
    return _selectedImageTintColor;
}

- (void)setSelectedImageTintColor:(id)val {
    RELEASE_TO_NIL(_selectedImageTintColor)
    _selectedImageTintColor = [val retain];
    [self tabbar].selectedImageTintColor = [self colorValue:_selectedImageTintColor];    
}

@end

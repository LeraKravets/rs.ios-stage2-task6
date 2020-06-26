//
//  UIColor+ColorPalette.m
//  Task6
//
//  Created by Лера on 6/23/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "UIColor+ColorPalette.h"
//
//#import <AppKit/AppKit.h>
//

@implementation UIColor (ColorPalette)

+ (UIColor *) customBlack {
    int hexValue = 0x101010;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *) customWhite {
    int hexValue = 0xFFFFFF;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *) customRed {
    int hexValue = 0xEE686A;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *) customBlue {
    int hexValue = 0x29C2D1;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *) customYellow {
    int hexValue = 0xF9CC78;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *) customYellowHighlighted {
    int hexValue = 0xFDF4E3;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

+ (UIColor *) customGray {
    int hexValue = 0x707070;
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
    green:((float)((hexValue & 0xFF00) >> 8))/255.0
     blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
}

@end

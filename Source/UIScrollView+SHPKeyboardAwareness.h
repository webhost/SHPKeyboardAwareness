//
//  UIScrollView+SHPKeyboardAwareness.h
//  Pods
//
//  Created by Mikkel Selsøe Sørensen on 25/06/15.
//
//

#import <UIKit/UIKit.h>

@interface UIScrollView (SHPKeyboardAwareness)

/// Sets up and engages basic keyboard awareness for the receiver. Manipulates the contentInset and scrollIndicatorInsets.
- (void) shp_setupKeyboardAwareness;

@end

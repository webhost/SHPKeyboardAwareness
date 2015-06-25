//
//  UIScrollView+SHPKeyboardAwareness.m
//  Pods
//
//  Created by Mikkel Selsøe Sørensen on 25/06/15.
//
//

#import "UIScrollView+SHPKeyboardAwareness.h"
#import "NSObject+SHPKeyboardAwareness.h"
#import "SHPKeyboardEvent.h"

@implementation UIScrollView (SHPKeyboardAwareness)

- (void) shp_setupKeyboardAwareness {
    [self rac_liftSelector:@selector(shp_handleKeyboardEvent:) withSignals:[self shp_keyboardAwarenessSignalForView:self], nil];
}

- (void) shp_handleKeyboardEvent: (SHPKeyboardEvent*) event {
    [UIView animateWithDuration:event.keyboardAnimationDuration delay:0 options:event.keyboardAnimationOptionCurve animations:^{
        self.contentInset = UIEdgeInsetsMake(0, 0, event.keyboardFrame.size.height+10, 0);
        self.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, event.keyboardFrame.size.height, 0);
    } completion:nil];
}

@end

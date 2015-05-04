//
// SHPKeyboardAwareness
// SHPKeyboardEvent.m
//
// Copyright (c) 2014-2015 SHAPE A/S. All rights reserved.
//

#import "SHPKeyboardEvent.h"

@implementation SHPKeyboardEvent

- (void)setConflictingView:(UIView *)conflictingView {
    _conflictingView = conflictingView;
}

- (void)setRequiredViewOffset:(CGFloat)requiredViewOffset {
    _requiredViewOffset = requiredViewOffset;
}

- (void)setVisibleScreenArea:(CGRect)visibleScreenArea {
    _visibleScreenArea = visibleScreenArea;
}

- (void)setKeyboardFrame:(CGRect)keyboardFrame {
    _keyboardFrame = keyboardFrame;
}

- (void)setKeyboardAnimationDuration:(CGFloat)keyboardAnimationDuration {
    _keyboardAnimationDuration = keyboardAnimationDuration;
}

- (void)setKeyboardAnimationCurve:(UIViewAnimationCurve)keyboardAnimationCurve {
    _keyboardAnimationCurve = keyboardAnimationCurve;
}

- (UIViewAnimationOptions)keyboardAnimationOptionCurve {
    NSAssert(UIViewAnimationCurveLinear << 16 == UIViewAnimationOptionCurveLinear, @"Unexpected implementation of UIViewAnimationCurve");
    
    return self.keyboardAnimationCurve << 16;
}

- (void)setKeyboardEventType:(SHPKeyboardEventType)keyboardEventType {
    _keyboardEventType = keyboardEventType;
}

- (void) animateWithKeyboard:(void (^)(void))animations {
    [self animateWithKeyboard:animations completion:nil];
}

- (void) animateWithKeyboard:(void (^)(void))animations completion: (void (^)(BOOL finished))completion {
    [UIView animateWithDuration:self.keyboardAnimationDuration delay:0 options:self.keyboardAnimationOptionCurve animations:animations completion:nil];
}

@end

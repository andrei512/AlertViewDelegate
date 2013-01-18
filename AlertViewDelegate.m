//
//  AlertViewDelegate.m
//
//  Created by Andrei on 1/18/13.
//
//

#import "AlertViewDelegate.h"

@implementation AlertViewDelegate

@synthesize alertViewDelegateBlock;

+ (AlertViewDelegate *)delegateWithBlock:(AlertViewDelegateBlock)block {
    AlertViewDelegate *delegate = [AlertViewDelegate new];
    
    delegate.alertViewDelegateBlock = block;
    delegate.selfRef = delegate;
    
    return delegate;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    self.alertViewDelegateBlock(alertView, buttonIndex);
    self.selfRef = nil;
}

@end

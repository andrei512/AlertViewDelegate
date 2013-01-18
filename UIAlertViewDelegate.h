//
//  AlertViewDelegate.h
//
//  Created by Andrei on 1/18/13.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^AlertViewDelegateBlock)(UIAlertView *alertView, int buttonIndex);

@interface AlertViewDelegate : NSObject <UIAlertViewDelegate>

@property (nonatomic, copy) AlertViewDelegateBlock alertViewDelegateBlock;
@property (nonatomic, strong) AlertViewDelegate *selfRef;

+ (AlertViewDelegate *)delegateWithBlock:(AlertViewDelegateBlock)block;

@end

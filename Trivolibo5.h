//
//  Trivolibo5.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 13/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "Trivolibo4.h"
#import "Trivolibo6.h"

@interface Trivolibo5 : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIView *popupView;
}
- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)popupAction:(id)sender;
@property(nonatomic,retain)IBOutlet UIView *popupView;;
@end

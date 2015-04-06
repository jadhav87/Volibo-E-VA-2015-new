//
//  VoliboM3.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "VoliboM2.h"
#import "Trivolibo12.h"
#import "Header.h"

@interface VoliboM3 : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIView *popupView;
    IBOutlet UIImageView *ref;
    Boolean val;
}
@property(nonatomic,retain)IBOutlet UIView *popupView;

- (IBAction)refAction:(id)sender;
@property(nonatomic,retain)IBOutlet UIImageView *ref;

- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)popupAction:(id)sender;
@end

//
//  VoliboM2.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "VolibomViewController.h"
#import "VoliboM3.h"

@interface VoliboM2 : UIViewController
{
    IBOutlet UIImageView *animationView;
}
@property(nonatomic,retain)IBOutlet UIImageView *animationView;
- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
@end

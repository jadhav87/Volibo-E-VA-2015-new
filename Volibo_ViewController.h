//
//  Volibo_ViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 25/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "page2ViewController.h"

@interface Volibo_ViewController : UIViewController
{
    IBOutlet UIImageView *animationView;
}
@property(nonatomic,retain)IBOutlet UIImageView *animationView;;
- (IBAction)gotoHome:(id)sender;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
@end

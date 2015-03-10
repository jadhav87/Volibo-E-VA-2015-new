//
//  Volibo_ViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 25/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "page2ViewController.h"

@interface Volibo_ViewController : UIViewController
{
    IBOutlet UIImageView *plate;
    IBOutlet UIImageView *number;
    IBOutlet UIImageView *text1;
    IBOutlet UIImageView *text2;
    IBOutlet UIImageView *text3;
    IBOutlet UIImageView *popupImg;
    
    IBOutlet UIImageView *graphAni1;
    IBOutlet UIImageView *graphAni2;
    IBOutlet UIImageView *graphAni3;
    IBOutlet UIImageView *graphAni4;
    IBOutlet UIImageView *graphAni5;
    
    IBOutlet UIButton *popup;
    IBOutlet UIButton *closeBtn;
}
@property(nonatomic,retain)IBOutlet UIImageView *plate;
@property(nonatomic,retain)IBOutlet UIImageView *number;
@property(nonatomic,retain)IBOutlet UIImageView *text1;
@property(nonatomic,retain)IBOutlet UIImageView *text2;
@property(nonatomic,retain)IBOutlet UIImageView *text3;
@property(nonatomic,retain)IBOutlet UIImageView *popupImg;

@property(nonatomic,retain)IBOutlet UIImageView *graphAni1;
@property(nonatomic,retain)IBOutlet UIImageView *graphAni2;
@property(nonatomic,retain)IBOutlet UIImageView *graphAni3;
@property(nonatomic,retain)IBOutlet UIImageView *graphAni4;
@property(nonatomic,retain)IBOutlet UIImageView *graphAni5;

@property(nonatomic,retain)IBOutlet UIButton *popup;
@property(nonatomic,retain)IBOutlet UIButton *closeBtn;
- (IBAction)gotoHome:(id)sender;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)popupAction:(id)sender;
- (IBAction)closeAction:(id)sender;
@end

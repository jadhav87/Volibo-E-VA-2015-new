//
//  page2ViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 25/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Volibo_ViewController.h"
#import "HomeViewController.h"
#import "EfficancyViewController.h"
#import "TolerabikityViewController.h"
#import "ExcursionViewController.h"
#import "NephroViewController.h"

@interface page2ViewController : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIImageView *plate1Img;
    IBOutlet UIImageView *plate2Img;
    IBOutlet UIImageView *plate3Img;
    
    IBOutlet UIImageView *drag1Img;
    IBOutlet UIImageView *drag2Img;
    IBOutlet UIImageView *drag3Img;
    
    IBOutlet UIImageView *d1;
    IBOutlet UIImageView *d2;
    IBOutlet UIImageView *d3;
    
    IBOutlet UIView *grapView1;
    IBOutlet UIView *grapView2;
    IBOutlet UIView *grapView3;
    
    IBOutlet UIImageView *grapAni;
    IBOutlet UIImageView *grapAni2;
    IBOutlet UIImageView *grapAni3;
    
}
@property(nonatomic,retain)IBOutlet UIImageView *plate1Img;
@property(nonatomic,retain)IBOutlet UIImageView *plate2Img;
@property(nonatomic,retain)IBOutlet UIImageView *plate3Img;

@property(nonatomic,retain)IBOutlet UIImageView *drag1Img;
@property(nonatomic,retain)IBOutlet UIImageView *drag2Img;
@property(nonatomic,retain)IBOutlet UIImageView *drag3Img;

@property(nonatomic,retain)IBOutlet UIImageView *d1;
@property(nonatomic,retain)IBOutlet UIImageView *d2;
@property(nonatomic,retain)IBOutlet UIImageView *d3;

@property(nonatomic,retain)IBOutlet UIView *grapView1;
@property(nonatomic,retain)IBOutlet UIView *grapView2;
@property(nonatomic,retain)IBOutlet UIView *grapView3;

@property(nonatomic,retain)IBOutlet UIImageView *grapAni;
@property(nonatomic,retain)IBOutlet UIImageView *grapAni2;
@property(nonatomic,retain)IBOutlet UIImageView *grapAni3;

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)closeAction:(id)sender;

@end

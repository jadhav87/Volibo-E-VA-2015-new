//
//  TolerabikityViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "EfficancyViewController.h"
#import "page2ViewController.h"
#import "ExcursionViewController.h"
#import "NephroViewController.h"

@interface TolerabikityViewController : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIImageView *chapatiImg;
    IBOutlet UIImageView *text1;
    IBOutlet UIImageView *text2;
    IBOutlet UIImageView *arrow;
    IBOutlet UIButton *tapButton;
}
@property(nonatomic,retain)IBOutlet UIImageView *chapatiImg;
@property(nonatomic,retain)IBOutlet UIImageView *text1;
@property(nonatomic,retain)IBOutlet UIImageView *text2;
@property(nonatomic,retain)IBOutlet UIImageView *arrow;
@property(nonatomic,retain)IBOutlet UIButton *tapButton;
- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)tapAction:(id)sender;
@end

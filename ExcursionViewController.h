//
//  ExcursionViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page2ViewController.h"
#import "EfficancyViewController.h"
#import "TolerabikityViewController.h"
#import "NephroViewController.h"

@interface ExcursionViewController : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIView *graphView1;
    IBOutlet UIView *graphView2;
    IBOutlet UIView *graphView3;
    
    IBOutlet UIImageView *graph1Animation;
    IBOutlet UIImageView *graph2Animation;
    
    IBOutlet UIImageView *line1Animation;
    IBOutlet UIImageView *line2Animation;
    
}
@property(nonatomic,retain)IBOutlet UIView *graphView1;
@property(nonatomic,retain)IBOutlet UIView *graphView2;
@property(nonatomic,retain)IBOutlet UIView *graphView3;

@property(nonatomic,retain)IBOutlet UIView *graph1Animation;
@property(nonatomic,retain)IBOutlet UIView *graph2Animation;
@property(nonatomic,retain)IBOutlet UIView *line1Animation;
@property(nonatomic,retain)IBOutlet UIView *line2Animation;

- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)tapAction:(id)sender;
- (IBAction)gotoSU:(id)sender;
- (IBAction)popupAndAnimateGraph:(id)sender;
@end

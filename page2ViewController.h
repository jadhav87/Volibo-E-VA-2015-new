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
    IBOutlet UIImageView *imageView;
}
@property(nonatomic,retain)IBOutlet UIImageView *imageView;

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;

@end

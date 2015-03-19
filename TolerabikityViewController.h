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
    IBOutlet UIImageView *flatChapati;
    IBOutlet UIButton *tapButton;
    
    IBOutlet UIView *grapView;
    IBOutlet UIImageView *aniImg;
    
    IBOutlet UIImageView *ref;
    Boolean val;
    
    IBOutlet UIView *pdfView;
    IBOutlet UIWebView *webPdf;
}
@property(nonatomic,retain)IBOutlet UIImageView *chapatiImg;
@property(nonatomic,retain)IBOutlet UIImageView *flatChapati;
@property(nonatomic,retain)IBOutlet UIButton *tapButton;

@property(nonatomic,retain)IBOutlet UIView *grapView;
@property(nonatomic,retain)IBOutlet UIImageView *aniImg;

@property(nonatomic,retain)IBOutlet UIImageView *ref;
@property(nonatomic,retain)IBOutlet UIView *pdfView;
@property(nonatomic,retain)IBOutlet UIWebView *webPdf;
- (IBAction)closePdf:(id)sender;

- (IBAction)closeAction:(id)sender;
- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)tapAction:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)refAction:(id)sender;
- (IBAction)closeRefAction:(id)sender;
@end

//
//  EfficancyViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "page2ViewController.h"
#import "TolerabikityViewController.h"
#import "ExcursionViewController.h"
#import "NephroViewController.h"
#import "Volibo_ViewController.h"


@interface EfficancyViewController : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIImageView *img1;
    IBOutlet UIImageView *img2;
    IBOutlet UIImageView *img3;
    IBOutlet UIImageView *img4;
    IBOutlet UIImageView *ref;
    
    IBOutlet UIImageView *text1;
    IBOutlet UIImageView *text2;
    IBOutlet UIImageView *text3;
    IBOutlet UIImageView *text4;
    
    Boolean val;
    
    IBOutlet UIView *pdfView;
    IBOutlet UIWebView *webPdf;
}
@property (weak, nonatomic) IBOutlet UIImageView *refcloseImg;
@property(nonatomic,retain)IBOutlet UIImageView *img1;
@property(nonatomic,retain)IBOutlet UIImageView *img2;
@property(nonatomic,retain)IBOutlet UIImageView *img3;
@property(nonatomic,retain)IBOutlet UIImageView *img4;
@property(nonatomic,retain)IBOutlet UIImageView *ref;

@property(nonatomic,retain)IBOutlet UIImageView *text1;
@property(nonatomic,retain)IBOutlet UIImageView *text2;
@property(nonatomic,retain)IBOutlet UIImageView *text3;
@property(nonatomic,retain)IBOutlet UIImageView *text4;

@property(nonatomic,retain)IBOutlet UIView *pdfView;
@property(nonatomic,retain)IBOutlet UIWebView *webPdf;
- (IBAction)closePdf:(id)sender;
- (IBAction)swipeRight:(id)sender;

- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)refAction:(id)sender;
- (IBAction)refCloseAction:(id)sender;
@end

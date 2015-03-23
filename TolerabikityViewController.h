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
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

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
    
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
    
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
   //----------------------------------------------------------------//
}
@property(nonatomic,retain)UIButton *button1;
@property(nonatomic,retain)UIButton *button2;
@property(nonatomic,retain)UIButton *button3;
@property(nonatomic,retain)UIButton *button4;
@property(nonatomic,retain)UIButton *button5;
@property(nonatomic,retain)UIButton *button6;
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
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

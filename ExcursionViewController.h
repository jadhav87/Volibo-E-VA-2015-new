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
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ExcursionViewController : UIViewController<UIGestureRecognizerDelegate>
{
    IBOutlet UIView *graphView1;
    IBOutlet UIView *graphView2;
    IBOutlet UIView *graphView3;
    IBOutlet UIView *graphView4;
    IBOutlet UIView *graphView5;
    IBOutlet UIView *graphView6;
    IBOutlet UIView *graphView7;
    
    IBOutlet UIImageView *graph1Animation;
    IBOutlet UIImageView *graph2Animation;
    
    IBOutlet UIImageView *line1Animation;
    IBOutlet UIImageView *line2Animation;
    
    IBOutlet UIImageView *graph3Animation;
    IBOutlet UIImageView *graph4Animation;
    
    IBOutlet UIImageView *LoopAnimation;
    
    IBOutlet UIImageView *exgraph1;
    IBOutlet UIImageView *exgraph2;
    IBOutlet UIImageView *exgraph3;
    IBOutlet UIImageView *exgraph4;
    IBOutlet UIImageView *exgraph5;
    
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
    
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    
    IBOutlet UIImageView *ref;
    IBOutlet UIImageView *ref2;
    IBOutlet UIImageView *ref3;
    
    
    Boolean val;
    
    
}
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
@property(nonatomic,retain)IBOutlet UIView *graphView1;
@property(nonatomic,retain)IBOutlet UIView *graphView2;
@property(nonatomic,retain)IBOutlet UIView *graphView3;
@property(nonatomic,retain)IBOutlet UIView *graphView4;
@property(nonatomic,retain)IBOutlet UIView *graphView5;
@property(nonatomic,retain)IBOutlet UIView *graphView6;
@property(nonatomic,retain)IBOutlet UIView *graphView7;

@property(nonatomic,retain)IBOutlet UIView *graph1Animation;
@property(nonatomic,retain)IBOutlet UIView *graph2Animation;
@property(nonatomic,retain)IBOutlet UIView *line1Animation;
@property(nonatomic,retain)IBOutlet UIView *line2Animation;

@property(nonatomic,retain)IBOutlet UIImageView *graph3Animation;
@property(nonatomic,retain)IBOutlet UIImageView *graph4Animation;

@property(nonatomic,retain)IBOutlet UIImageView *LoopAnimation;
@property(nonatomic,retain)IBOutlet UIImageView *ref;
@property(nonatomic,retain)IBOutlet UIImageView *ref2;
@property(nonatomic,retain)IBOutlet UIImageView *ref3;

@property(nonatomic,retain)IBOutlet UIImageView *exgraph1;
@property(nonatomic,retain)IBOutlet UIImageView *exgraph2;

@property(nonatomic,retain)IBOutlet UIImageView *exgraph3;
@property(nonatomic,retain)IBOutlet UIImageView *exgraph4;
@property(nonatomic,retain)IBOutlet UIImageView *exgraph5;


@property(nonatomic,retain)UIButton *button1;
@property(nonatomic,retain)UIButton *button2;
@property(nonatomic,retain)UIButton *button3;
@property(nonatomic,retain)UIButton *button4;
@property(nonatomic,retain)UIButton *button5;
@property(nonatomic,retain)UIButton *button6;

- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)refAction:(id)sender;
- (IBAction)closeRefAction:(id)sender;
- (IBAction)ref2Action:(id)sender;
- (IBAction)ref2closeAction:(id)sender;
- (IBAction)ref3Action:(id)sender;
- (IBAction)ref3closeAction:(id)sender;

- (IBAction)efficancyAction:(id)sender;
- (IBAction)potencyBtn:(id)sender;
- (IBAction)tolerabikityAction:(id)sender;
- (IBAction)excursionAction:(id)sender;
- (IBAction)nephroAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)tapAction:(id)sender;
- (IBAction)gotoSU:(id)sender;
- (IBAction)popupAndAnimateGraph:(id)sender;
- (IBAction)dropAction:(id)sender;
- (IBAction)gotoSu:(id)sender;
- (IBAction)gotoDPP4:(id)sender;
- (IBAction)grap1Action:(id)sender;
- (IBAction)graph2action:(id)sender;
- (IBAction)closeView6Action:(id)sender;
- (IBAction)closeView7Action:(id)sender;

@end

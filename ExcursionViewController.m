//
//  ExcursionViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "ExcursionViewController.h"

@interface ExcursionViewController ()

@end

@implementation ExcursionViewController
@synthesize graphView1,graphView2,graphView3,graphView4,graphView5,graphView6,graph1Animation,graph2Animation,line1Animation,line2Animation;
@synthesize graph3Animation,graph4Animation,graphView7,LoopAnimation;
@synthesize button1,button2,button3,button4,button5,button6,ref,exgraph1,exgraph2,ref2,ref3,exgraph3,exgraph4,exgraph5;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    val = FALSE;
    
    NSLog(@"ExcursionViewController");
    
    NSURL *url =[[NSBundle mainBundle] URLForResource:@"rice_animation" withExtension:@"mp4"];
    
    moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [moviePlayerController.view setFrame:CGRectMake(0, 0, 1024, 768)];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:moviePlayerController];
    [self.view addSubview:moviePlayerController.view];
    moviePlayerController.fullscreen = YES;
    moviePlayerController.controlStyle=MPMovieControlStyleNone;
    [moviePlayerController play];
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
    
    graphView3.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView:)];
    
    tapGesture.numberOfTapsRequired = 1;
    
    [tapGesture setDelegate:self];
    
    [graphView3 addGestureRecognizer:tapGesture];
    //-----------------------------------------------------------------------------------------------------------------------//
    graphView6.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture:)];
    
    tapGesture1.numberOfTapsRequired = 1;
    
    [tapGesture1 setDelegate:self];
    
    [graphView6 addGestureRecognizer:tapGesture1];
    
    graphView7.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture:)];
    
    tapGesture2.numberOfTapsRequired = 1;
    
    [tapGesture2 setDelegate:self];
    
    [graphView7 addGestureRecognizer:tapGesture2];
    
    //---------------------------------------- set up button --------------------------------------------------------------//
    button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(30, 711, 143, 33);
    UIImage *buttonImage1 = [UIImage imageNamed:@"4-8.png"];
    [self.button1 setImage:buttonImage1 forState:UIControlStateNormal];
    [button1 addTarget: self
              action: @selector(potencyBtn:)
    forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(216, 711, 143, 33);
    UIImage *buttonImage2 = [UIImage imageNamed:@"tab.png"];
    [self.button2 setImage:buttonImage2 forState:UIControlStateNormal];
    [button2 addTarget: self
                action: @selector(efficancyAction:)
      forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(397, 711, 143, 33);
    UIImage *buttonImage3 = [UIImage imageNamed:@"4-9.png"];
    [self.button3 setImage:buttonImage3 forState:UIControlStateNormal];
    [button3 addTarget: self
                action: @selector(tolerabikityAction:)
      forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(583, 711, 143, 33);
    UIImage *buttonImage4 = [UIImage imageNamed:@"14-3.png"];
    [self.button4 setImage:buttonImage4 forState:UIControlStateNormal];
    [button4 addTarget: self
                action: @selector(excursionAction:)
      forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(766, 711, 143, 33);
    UIImage *buttonImage5 = [UIImage imageNamed:@"4-11.png"];
    [self.button5 setImage:buttonImage5 forState:UIControlStateNormal];
    [button5 addTarget: self
                action: @selector(nephroAction:)
      forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    
    button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake(938, 694, 52, 54);
    UIImage *buttonImage6 = [UIImage imageNamed:@"2-6.png"];
    [self.button6 setImage:buttonImage6 forState:UIControlStateNormal];
    [button6 addTarget: self
                action: @selector(homeAction:)
      forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button6];
    
    //---------------------------------------- image loop -----------------------------------------------------------------//
    NSArray *imageNames = @[@"loop1.png", @"loop2.png", @"loop3.png"];
    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNames.count; i++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    LoopAnimation.animationImages = images;
    LoopAnimation.animationDuration = 0.5;
    [LoopAnimation startAnimating];

}
- (void) tapGesture: (id)sender
{
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=NO;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
}
- (void) moviePlayBackDidFinish:(NSNotification*)notification
{
    
    MPMoviePlayerController *player = [notification object];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    if ([player respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
    }
}
- (void) graphView: (id)sender
{
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView2.hidden=NO;
    graphView7.hidden=YES;
}
- (IBAction)swipeRight:(id)sender {
    
    TolerabikityViewController *TolerabikityViewControllerObj=[[TolerabikityViewController alloc]init];
    [self.navigationController pushViewController:TolerabikityViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    NephroViewController *NephroViewControllerObj=[[NephroViewController alloc]init];
    [self.navigationController pushViewController:NephroViewControllerObj animated:NO];
}

- (IBAction)refAction:(id)sender {
    
    if (val == 0) {
        ref.hidden = NO;
        val = TRUE;
    }else{
        ref.hidden = YES;
        val = FALSE;
    }

}

- (IBAction)closeRefAction:(id)sender {
    
    ref.hidden = YES;
    val = FALSE;
}

- (IBAction)ref2Action:(id)sender {
    
    if (val == 0) {
        ref2.hidden = NO;
        val = TRUE;
    }else{
        ref2.hidden = YES;
        val = FALSE;
    }
}

- (IBAction)ref2closeAction:(id)sender {
    
    ref2.hidden = YES;
    val = FALSE;
}

- (IBAction)ref3Action:(id)sender {
    if (val == 0) {
        ref3.hidden = NO;
        val = TRUE;
    }else{
        ref3.hidden = YES;
        val = FALSE;
    }
}

- (IBAction)ref3closeAction:(id)sender {
    ref3.hidden = YES;
    val = FALSE;
}

- (IBAction)efficancyAction:(id)sender {
    NSLog(@"efficancyAction");
    page2ViewController *page2ViewControllerObj=[[page2ViewController alloc]init];
    [self.navigationController pushViewController:page2ViewControllerObj animated:NO];
}
- (IBAction)potencyBtn:(id)sender {
    
    NSLog(@"potencyBtn");
    
    EfficancyViewController *EfficancyViewControllerObj=[[EfficancyViewController alloc]init];
    [self.navigationController pushViewController:EfficancyViewControllerObj animated:NO];
    
}

- (IBAction)tolerabikityAction:(id)sender {
    NSLog(@"tolerabikityAction");
    TolerabikityViewController *TolerabikityViewControllerObj=[[TolerabikityViewController alloc]init];
    [self.navigationController pushViewController:TolerabikityViewControllerObj animated:NO];
    
}

- (IBAction)excursionAction:(id)sender {
    NSLog(@"excursionAction");
    ExcursionViewController *ExcursionViewControllerObj=[[ExcursionViewController alloc]init];
    [self.navigationController pushViewController:ExcursionViewControllerObj animated:NO];
}

- (IBAction)nephroAction:(id)sender {
    NSLog(@"nephroAction");
    NephroViewController *NephroViewControllerObj=[[NephroViewController alloc]init];
    [self.navigationController pushViewController:NephroViewControllerObj animated:NO];
}

- (IBAction)homeAction:(id)sender {
    
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)tapAction:(id)sender {
    NSLog(@"This is tap action");
}

- (IBAction)gotoSU:(id)sender {
     graphView2.hidden=NO;
     graphView3.hidden=YES;
     graphView4.hidden=YES;
     graphView5.hidden=YES;
     graphView6.hidden=YES;
     graphView7.hidden=YES;
}

- (IBAction)popupAndAnimateGraph:(id)sender {
    
    graphView2.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView3.hidden=NO;
    graphView7.hidden=YES;
    [self graphAnimation];
}

- (IBAction)dropAction:(id)sender {
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=NO;
    graphView6.hidden=YES;
    graphView2.hidden=YES;
    graphView7.hidden=YES;
}

- (IBAction)gotoSu:(id)sender {
    graphView2.hidden=NO;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
}

- (IBAction)gotoDPP4:(id)sender {
    
    graphView3.hidden=YES;
    graphView4.hidden=NO;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView2.hidden=YES;
    graphView7.hidden=YES;
}

- (IBAction)grap1Action:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=NO;
    graphView7.hidden=YES;
    [self graphAnimation1];
    
}

- (IBAction)graph2action:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView7.hidden=NO;
    [self graphAnimation2];

}

- (IBAction)closeView6Action:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=NO;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
    
}

- (IBAction)closeView7Action:(id)sender {
}
-(void)graphAnimation2{
    
    graph4Animation.frame=CGRectMake(292, 453, 0, 120);
    exgraph4.frame=CGRectMake(301, 473, 304, 100);
    [exgraph5 setAlpha:0.0f];
    [exgraph3 setAlpha:0.0f];
    [exgraph4 setAlpha:0.0f];
    
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         [exgraph4 setAlpha:1.0f];
//                         exgraph5.frame=CGRectMake(301, 473, 304, 100);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:1.0
                          delay:1.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         [exgraph3 setAlpha:1.0f];
                         [exgraph5 setAlpha:1.0f];
                         //                         exgraph5.frame=CGRectMake(301, 473, 304, 100);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];

    
}

-(void)graphAnimation1{
    
    graph3Animation.frame=CGRectMake(292, 420, 0, 151);
    exgraph1.frame=CGRectMake(292, 449, 312, 122);
    [exgraph2 setAlpha:0.0f];
    [exgraph1 setAlpha:0.0f];
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
//                         exgraph1.frame=CGRectMake(292, 449, 312, 122);
                            [exgraph1 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:1.5
                          delay:1.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [exgraph2 setAlpha:1.0f];
//                         exgraph2.frame=CGRectMake(292, 420, 315, 151);
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}

-(void)graphAnimation{
    
    graph1Animation.frame=CGRectMake(100, 496, 530, 0);
    line1Animation.frame=CGRectMake(280, 445, 0, 5);
    line2Animation.frame=CGRectMake(595, 409, 0, 5);
    [graph2Animation setAlpha:0.0f];
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         graph1Animation.frame=CGRectMake(100, 347, 530, 149);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.8
                          delay:1.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                        [graph2Animation setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    
    [UIView animateWithDuration:1.5
                          delay:1.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         line1Animation.frame=CGRectMake(280, 448, 592, 5);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:1.5
                          delay:2.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         line2Animation.frame=CGRectMake(595, 409, 290, 5);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
        return YES;
    
    return NO;
}
-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = YES;
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
-(void)setupButton{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

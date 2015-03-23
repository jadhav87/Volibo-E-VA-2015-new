//
//  TolerabikityViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "TolerabikityViewController.h"

@interface TolerabikityViewController ()

@end

@implementation TolerabikityViewController
@synthesize chapatiImg,flatChapati,tapButton,grapView,aniImg,ref;
@synthesize pdfView,webPdf,button1;
@synthesize button2,button3,button4,button5,button6;
- (void)viewDidLoad {
    [super viewDidLoad];
    val = FALSE;
    NSLog(@"TolerabikityViewController");
    
    flatChapati.hidden=YES;
    grapView.hidden=YES;
    
    chapatiImg.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture:)];
    
    tapGesture1.numberOfTapsRequired = 1;
    
    [tapGesture1 setDelegate:self];
    [chapatiImg addGestureRecognizer:tapGesture1];
    
    //-------------------------------------------------------------------------------------------------------------------------------//
    
    flatChapati.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView:)];
    
    tapGesture2.numberOfTapsRequired = 1;
    
    [tapGesture2 setDelegate:self];
    
    [flatChapati addGestureRecognizer:tapGesture2];
    
    // Do any additional setup after loading the view from its nib.
    
    //-------------------------------------------------------------------------------------------------------------------------------//
    
    val = FALSE;
    
    ref.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(pdfView:)];
    
    tapGesture3.numberOfTapsRequired = 1;
    
    [tapGesture3 setDelegate:self];
    [ref addGestureRecognizer:tapGesture3];
    
    //-----------------------------------------------------------------------------------------------------------//
    
    grapView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture5 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(closeGraph:)];
    
    tapGesture5.numberOfTapsRequired = 1;
    
    [tapGesture5 setDelegate:self];
    [grapView addGestureRecognizer:tapGesture5];
    
    //--------------------------------------- load pdf -----------------------------------------------------//
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Diabetes Res Clin Pract_ 2002 Feb_55(2)_99-103." ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [[webPdf scrollView] setContentOffset:CGPointMake(0,500) animated:YES];
    webPdf.backgroundColor = [UIColor clearColor];
    [webPdf stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [webPdf loadRequest:request];

    NSURL *url =[[NSBundle mainBundle] URLForResource:@"roti animation_x264" withExtension:@"mp4"];
    
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

    
}
- (IBAction)nextView:(id)sender {
    grapView.hidden=NO;
    [self graphAnimation];
}
- (void) moviePlayBackDidFinish:(NSNotification*)notification
{
    
    MPMoviePlayerController *player = [notification object];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    if ([player respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
        //Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
        //[self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
        
    }
}

-(void)closeGraph: (id)sender{
    grapView.hidden=YES;
}
- (void) pdfView: (id)sender
{
    pdfView.hidden = NO;
    
}
-(void)graphAnimation{
    
    aniImg.frame=CGRectMake(591, 590, 209, 0);
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         aniImg.frame=CGRectMake(591, 385, 209, 205);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}

- (void) tapGesture: (id)sender
{
    flatChapati.hidden=NO;
    tapButton.hidden=NO;
}

- (void) graphView: (id)sender
{
    grapView.hidden=NO;
    [self graphAnimation];
}

- (IBAction)closePdf:(id)sender {
    pdfView.hidden = YES;
    ref.hidden = YES;
    val = FALSE;
}

- (IBAction)closeAction:(id)sender {
    grapView.hidden=YES;
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

- (IBAction)swipeRight:(id)sender {
    [moviePlayerController stop];
    page2ViewController *page2ViewControllerObj=[[page2ViewController alloc]init];
    [self.navigationController pushViewController:page2ViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    [moviePlayerController stop];
    ExcursionViewController *ExcursionViewControllerObj=[[ExcursionViewController alloc]init];
    [self.navigationController pushViewController:ExcursionViewControllerObj animated:NO];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

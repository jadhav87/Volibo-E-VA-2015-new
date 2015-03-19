//
//  NephroViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "NephroViewController.h"

@interface NephroViewController ()

@end

@implementation NephroViewController
@synthesize button1,button2,button3,button4,button5,button6;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"NephroViewController");
    
    NSURL *url =[[NSBundle mainBundle] URLForResource:@"kidney_animation" withExtension:@"mp4"];
    
    moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [moviePlayerController.view setFrame:CGRectMake(0, 0, 1024, 768)];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:moviePlayerController];
    [self.view addSubview:moviePlayerController.view];
    moviePlayerController.fullscreen = YES;
    moviePlayerController.controlStyle=MPMovieControlStyleNone;
//    [moviePlayerController setCurrentPlaybackRate:2.2f];
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
    UIImage *buttonImage4 = [UIImage imageNamed:@"4-10.png"];
    [self.button4 setImage:buttonImage4 forState:UIControlStateNormal];
    [button4 addTarget: self
                action: @selector(excursionAction:)
      forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(766, 711, 143, 33);
    UIImage *buttonImage5 = [UIImage imageNamed:@"22-2.png"];
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
- (void) moviePlayBackDidFinish:(NSNotification*)notification
{
    
    MPMoviePlayerController *player = [notification object];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
//    if ([player respondsToSelector:@selector(setFullscreen:animated:)])
//    {
//        [player.view removeFromSuperview];
//    }
}

- (IBAction)swipeRight:(id)sender {
    
    ExcursionViewController *ExcursionViewControllerObj=[[ExcursionViewController alloc]init];
    [self.navigationController pushViewController:ExcursionViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    
    Trivolibo12 *Trivolibo12Obj=[[Trivolibo12 alloc]init];
    [self.navigationController pushViewController:Trivolibo12Obj animated:NO];
    pageValue = 1;
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

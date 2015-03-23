//
//  MLandingPage.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 21/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "MLandingPage.h"

@interface MLandingPage ()

@end

@implementation MLandingPage
@synthesize button6;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"HI i am here");
    
    NSURL *url =[[NSBundle mainBundle] URLForResource:@"volleyball_animation" withExtension:@"mp4"];
    
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
    
    //    MPMoviePlayerController *player = [notification object];
    //
    //    [[NSNotificationCenter defaultCenter] removeObserver:self
    //                                                    name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    //
    //        if ([player respondsToSelector:@selector(setFullscreen:animated:)])
    //        {
    //            [player.view removeFromSuperview];
    //        }
}
- (IBAction)homeAction:(id)sender {
    
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
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

- (IBAction)swipeLeft:(id)sender {
    
    [moviePlayerController stop];
    VolibomViewController *VolibomViewControllerObj=[[VolibomViewController alloc]init];
    [self.navigationController pushViewController:VolibomViewControllerObj animated:NO];
}

- (IBAction)swipeRight:(id)sender {
    
    [moviePlayerController stop];
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}
@end

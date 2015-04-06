//
//  VLandingPage.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 21/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "VLandingPage.h"

@interface VLandingPage ()

@end

@implementation VLandingPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSURL *url =[[NSBundle mainBundle] URLForResource:@"VOLIBO_x264" withExtension:@"mp4"];
    
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
    
    NSLog(@"video landing page");

}

- (void) moviePlayBackDidFinish:(NSNotification*)notification
{
    
    MPMoviePlayerController *player = [notification object];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    if ([player respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
        
        Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
        [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
        
    }
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

- (IBAction)swipeRight:(id)sender {
    [moviePlayerController stop];
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    [moviePlayerController stop];
    Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
    [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
}
@end

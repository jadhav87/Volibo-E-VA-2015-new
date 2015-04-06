//
//  SartUpVideo.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 24/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "SartUpVideo.h"

@interface SartUpVideo ()

@end

@implementation SartUpVideo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSURL *url =[[NSBundle mainBundle] URLForResource:@"avior" withExtension:@"mp4"];
    
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
    
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification
{
    
    MPMoviePlayerController *player = [notification object];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification object:player];
    
    if ([player respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
        HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
        [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    
    //    ViewController *ViewControllerObj=[[ViewController alloc]init];
    //    [self.navigationController pushViewController:ViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    [moviePlayerController stop];
        [moviePlayerController.view removeFromSuperview];
        HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
        [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
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


@end

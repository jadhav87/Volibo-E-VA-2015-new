//
//  Volibo_ViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 25/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "Volibo_ViewController.h"

@interface Volibo_ViewController ()

@end

@implementation Volibo_ViewController
@synthesize plate,number,text1,text2,text3,popup,popupImg,closeBtn;
@synthesize graphAni1,closePopup;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view from its nib.
    popupImg.hidden=YES;
    graphAni1.hidden=YES;
    closeBtn.hidden=YES;
    text3.hidden=YES;
    
    closePopup.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView)];
    
    tapGesture.numberOfTapsRequired = 1;
    
    [tapGesture setDelegate:self];
    
    [closePopup addGestureRecognizer:tapGesture];
    
    
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
-(void)graphView{
    
    popupImg.hidden=YES;
    closeBtn.hidden=YES;
    text3.hidden=YES;
    
    graphAni1.hidden=YES;
    
    
    plate.hidden=NO;
    number.hidden=NO;
    text1.hidden=NO;
    text2.hidden=NO;
    popup.hidden=NO;
    
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
-(void)graphAnimation{
    
    graphAni1.frame=CGRectMake(328, 631, 355, 0);
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         graphAni1.frame=CGRectMake(328, 432, 355, 199);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)gotoHome:(id)sender {
    
    [moviePlayerController stop];
    
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    
    [moviePlayerController stop];
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    
    [moviePlayerController stop];
    EfficancyViewController *EfficancyViewControllerObj=[[EfficancyViewController alloc]init];
    [self.navigationController pushViewController:EfficancyViewControllerObj animated:NO];
}

- (IBAction)popupAction:(id)sender {
    
    NSLog(@"Hi this is popup");
    popupImg.hidden=NO;
    closeBtn.hidden=NO;
    text3.hidden=NO;
    
    graphAni1.hidden=NO;
    
    [self graphAnimation];
    
    plate.hidden=YES;
    number.hidden=YES;
    text1.hidden=YES;
    text2.hidden=YES;
    popup.hidden=YES;
    
    
}

- (IBAction)closeAction:(id)sender {
    
    popupImg.hidden=YES;
    closeBtn.hidden=YES;
    text3.hidden=YES;
    
    graphAni1.hidden=YES;

    
    plate.hidden=NO;
    number.hidden=NO;
    text1.hidden=NO;
    text2.hidden=NO;
    popup.hidden=NO;
}
@end

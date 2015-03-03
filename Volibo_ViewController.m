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
@synthesize animationView;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view from its nib.
    [self backAnimation];
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
-(void)backAnimation{
    
    animationView.frame=CGRectMake(506, 487, 0, 0);
    
    [UIView animateWithDuration:2.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         animationView.frame=CGRectMake(344, 415, 337, 295);
                         
                         
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
    
    ViewController *ViewControllerObj=[[ViewController alloc]init];
    [self.navigationController pushViewController:ViewControllerObj animated:NO];
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    
    page2ViewController *page2ViewControllerObj=[[page2ViewController alloc]init];
    [self.navigationController pushViewController:page2ViewControllerObj animated:NO];
}
@end

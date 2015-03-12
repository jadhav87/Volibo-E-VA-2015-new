//
//  Trivolibo3.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "Trivolibo3.h"

@interface Trivolibo3 ()

@end

@implementation Trivolibo3
@synthesize animation1,animation2,animation3;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self graphAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)graphAnimation{
    
    [animation2 setAlpha:0.0f];
    [animation3 setAlpha:0.0f];
    
    animation1.frame=CGRectMake(261, -3, 475, 237);
    
    [UIView animateWithDuration:3.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         animation1.frame=CGRectMake(261, 345, 475, 237);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:1.5
                          delay:3.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [animation2 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    [UIView animateWithDuration:1.5
                          delay:3.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [animation3 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];

    
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
- (IBAction)homeAction:(id)sender {
    
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)swipeRight:(id)sender {
    Trivolibo2 *Trivolibo2Obj=[[Trivolibo2 alloc]init];
    [self.navigationController pushViewController:Trivolibo2Obj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    Trivolibo4 *Trivolibo4Obj=[[Trivolibo4 alloc]init];
    [self.navigationController pushViewController:Trivolibo4Obj animated:NO];
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

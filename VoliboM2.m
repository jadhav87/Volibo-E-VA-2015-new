//
//  VoliboM2.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "VoliboM2.h"

@interface VoliboM2 ()

@end

@implementation VoliboM2
@synthesize animationView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self graphAnimation];
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

-(void)graphAnimation{
    
    animationView.frame=CGRectMake(86, 513, 342, 0);
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         animationView.frame=CGRectMake(86, 513, 342, 148);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
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

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    
    VolibomViewController *VolibomViewControllerObj=[[VolibomViewController alloc]init];
    [self.navigationController pushViewController:VolibomViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    
    VoliboM3 *VoliboM3Obj=[[VoliboM3 alloc]init];
    [self.navigationController pushViewController:VoliboM3Obj animated:NO];
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

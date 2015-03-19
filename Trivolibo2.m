//
//  Trivolibo2.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "Trivolibo2.h"

@interface Trivolibo2 ()

@end

@implementation Trivolibo2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)homeAction:(id)sender {
    
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)swipeRight:(id)sender {
//    Trivolibo1 *Trivolibo1Obj=[[Trivolibo1 alloc]init];
//    [self.navigationController pushViewController:Trivolibo1Obj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    Trivolibo3 *Trivolibo3Obj=[[Trivolibo3 alloc]init];
    [self.navigationController pushViewController:Trivolibo3Obj animated:NO];
}

- (IBAction)popOut:(id)sender {
    Trivolibo1 *Trivolibo1Obj=[[Trivolibo1 alloc]init];
    [self.navigationController pushViewController:Trivolibo1Obj animated:NO];
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

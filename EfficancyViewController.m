//
//  EfficancyViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "EfficancyViewController.h"

@interface EfficancyViewController ()

@end

@implementation EfficancyViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
      NSLog(@" this is EfficancyViewController");
}
- (IBAction)efficancyAction:(id)sender {
    NSLog(@"efficancyAction");
    page2ViewController *page2ViewControllerObj=[[page2ViewController alloc]init];
    [self.navigationController pushViewController:page2ViewControllerObj animated:NO];
}

- (IBAction)potencyBtn:(id)sender {
    NSLog(@"potencyBtn");
    
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

//
//  page2ViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 25/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "page2ViewController.h"

@interface page2ViewController ()

@end

@implementation page2ViewController

@synthesize imageView;

- (void)viewDidLoad {
    NSLog(@" this is page 2");
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}
//9022630134
//rampal
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

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
    [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)efficancyAction:(id)sender {
    NSLog(@"efficancyAction");
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
    ExcursionViewController *ExcursionViewControllerObjObj=[[ExcursionViewController alloc]init];
    [self.navigationController pushViewController:ExcursionViewControllerObjObj animated:NO];
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
@end

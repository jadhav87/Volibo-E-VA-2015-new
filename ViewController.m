//
//  ViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 24/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)gotoVolibo:(id)sender {
    
    NSLog(@"gotoVolibo");
    Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
    [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
}

- (IBAction)gtotVoliboM:(id)sender {
    NSLog(@"gtotVoliboM");
}

- (IBAction)gotoTriVolibo:(id)sender {
     NSLog(@"gotoTriVolibo");
}
@end

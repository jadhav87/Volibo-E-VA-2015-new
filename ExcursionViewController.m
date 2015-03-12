//
//  ExcursionViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "ExcursionViewController.h"

@interface ExcursionViewController ()

@end

@implementation ExcursionViewController
@synthesize graphView1,graphView2,graphView3,graph1Animation,graph2Animation,line1Animation,line2Animation;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"ExcursionViewController");
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    
    graphView3.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView:)];
    
    tapGesture.numberOfTapsRequired = 1;
    
    [tapGesture setDelegate:self];
    
    [graphView3 addGestureRecognizer:tapGesture];
}
- (void) graphView: (id)sender
{
    graphView3.hidden=YES;
}
- (IBAction)efficancyAction:(id)sender {
    NSLog(@"efficancyAction");
    page2ViewController *page2ViewControllerObj=[[page2ViewController alloc]init];
    [self.navigationController pushViewController:page2ViewControllerObj animated:NO];
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
//    EfficancyViewController *EfficancyViewControllerObj=[[EfficancyViewController alloc]init];
//    [self.navigationController pushViewController:EfficancyViewControllerObj animated:NO];
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

- (IBAction)tapAction:(id)sender {
    NSLog(@"This is tap action");
}

- (IBAction)gotoSU:(id)sender {
     graphView2.hidden=NO;
     graphView3.hidden=YES;
}

- (IBAction)popupAndAnimateGraph:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=NO;
    [self graphAnimation];
}
-(void)graphAnimation{
    
    graph1Animation.frame=CGRectMake(100, 496, 530, 0);
    line1Animation.frame=CGRectMake(280, 445, 0, 5);
    line2Animation.frame=CGRectMake(595, 409, 0, 5);
    [graph2Animation setAlpha:0.0f];
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         graph1Animation.frame=CGRectMake(100, 347, 530, 149);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.8
                          delay:1.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                        [graph2Animation setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    
    [UIView animateWithDuration:1.5
                          delay:1.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         line1Animation.frame=CGRectMake(280, 448, 592, 5);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:1.5
                          delay:2.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         line2Animation.frame=CGRectMake(595, 409, 290, 5);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];


    
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

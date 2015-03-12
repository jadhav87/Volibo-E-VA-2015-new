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
@synthesize graphView1,graphView2,graphView3,graphView4,graphView5,graphView6,graph1Animation,graph2Animation,line1Animation,line2Animation;
@synthesize graph3Animation,graph4Animation,graphView7;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"ExcursionViewController");
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
    
    graphView3.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView:)];
    
    tapGesture.numberOfTapsRequired = 1;
    
    [tapGesture setDelegate:self];
    
    [graphView3 addGestureRecognizer:tapGesture];
}
- (void) graphView: (id)sender
{
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView2.hidden=NO;
    graphView7.hidden=YES;
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
     graphView4.hidden=YES;
     graphView5.hidden=YES;
     graphView6.hidden=YES;
     graphView7.hidden=YES;
}

- (IBAction)popupAndAnimateGraph:(id)sender {
    
    graphView2.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView3.hidden=NO;
    graphView7.hidden=YES;
    [self graphAnimation];
}

- (IBAction)dropAction:(id)sender {
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=NO;
    graphView6.hidden=YES;
    graphView2.hidden=YES;
    graphView7.hidden=YES;
}

- (IBAction)gotoSu:(id)sender {
    graphView2.hidden=NO;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
}

- (IBAction)gotoDPP4:(id)sender {
    
    graphView3.hidden=YES;
    graphView4.hidden=NO;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView2.hidden=YES;
    graphView7.hidden=YES;
}

- (IBAction)grap1Action:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=NO;
    graphView7.hidden=YES;
    [self graphAnimation1];
    
}

- (IBAction)graph2action:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=YES;
    graphView6.hidden=YES;
    graphView7.hidden=NO;
    [self graphAnimation2];

}

- (IBAction)closeView6Action:(id)sender {
    
    graphView2.hidden=YES;
    graphView3.hidden=YES;
    graphView4.hidden=YES;
    graphView5.hidden=NO;
    graphView6.hidden=YES;
    graphView7.hidden=YES;
    
}

- (IBAction)closeView7Action:(id)sender {
}
-(void)graphAnimation2{
    
    graph4Animation.frame=CGRectMake(292, 453, 0, 120);
    
    [UIView animateWithDuration:1.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         graph4Animation.frame=CGRectMake(295, 453, 316, 120);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}

-(void)graphAnimation1{
    
    graph3Animation.frame=CGRectMake(292, 420, 0, 151);
    
    [UIView animateWithDuration:1.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         graph3Animation.frame=CGRectMake(292, 420, 315, 151);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
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

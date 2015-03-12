//
//  TolerabikityViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "TolerabikityViewController.h"

@interface TolerabikityViewController ()

@end

@implementation TolerabikityViewController
@synthesize chapatiImg,flatChapati,tapButton,grapView,aniImg;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"TolerabikityViewController");
    
    flatChapati.hidden=YES;
    grapView.hidden=YES;
    
    chapatiImg.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture:)];
    
    tapGesture1.numberOfTapsRequired = 1;
    
    [tapGesture1 setDelegate:self];
    [chapatiImg addGestureRecognizer:tapGesture1];
    
    //-------------------------------------------------------------------------------------------------------------------------------//
    
    flatChapati.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView:)];
    
    tapGesture2.numberOfTapsRequired = 1;
    
    [tapGesture2 setDelegate:self];
    
    [flatChapati addGestureRecognizer:tapGesture2];
    
    // Do any additional setup after loading the view from its nib.
}
-(void)graphAnimation{
    
    aniImg.frame=CGRectMake(591, 590, 209, 0);
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         aniImg.frame=CGRectMake(591, 385, 209, 205);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}

- (void) tapGesture: (id)sender
{
    flatChapati.hidden=NO;
    tapButton.hidden=NO;
}

- (void) graphView: (id)sender
{
    grapView.hidden=NO;
    [self graphAnimation];
}

- (IBAction)closeAction:(id)sender {
    grapView.hidden=YES;
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

- (IBAction)tapAction:(id)sender {
    NSLog(@"This is tap action");
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

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

@synthesize plate1Img,plate2Img,plate3Img,drag1Img,drag2Img,drag3Img,d1,d2,d3;
@synthesize grapView1,grapView2,grapView3,grapAni,grapAni2,grapAni3;

- (void)viewDidLoad {
    NSLog(@" this is page 2");
    [super viewDidLoad];
//---------------------------------------- before drag ---------------------------------------------------------------------//
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTochangeImage)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTochangeImage)];
    UITapGestureRecognizer *singleTap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTochangeImage)];
    
    [singleTap1 setNumberOfTapsRequired:1];
    [singleTap2 setNumberOfTapsRequired:1];
    [singleTap3 setNumberOfTapsRequired:1];
    
    [plate1Img addGestureRecognizer:singleTap1];
    [plate2Img addGestureRecognizer:singleTap2];
    [plate3Img addGestureRecognizer:singleTap3];
 //------------------------------------------------------ after drag ---------------------------------------------------------//
    UITapGestureRecognizer *Tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPlate1)];
    UITapGestureRecognizer *Tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPlate2)];
    UITapGestureRecognizer *Tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPlate3)];
    
    [Tap1 setNumberOfTapsRequired:1];
    [Tap2 setNumberOfTapsRequired:1];
    [Tap3 setNumberOfTapsRequired:1];
    
    [d1 addGestureRecognizer:Tap1];
    [d2 addGestureRecognizer:Tap2];
    [d3 addGestureRecognizer:Tap3];
    
    d1.hidden=YES;
    d2.hidden=YES;
    d3.hidden=YES;
    
    grapView1.hidden=YES;
    grapView2.hidden=YES;
    grapView3.hidden=YES;
}
-(void)graphAnimation{
    
    grapAni.frame=CGRectMake(566, 576, 205, 0);
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         grapAni.frame=CGRectMake(566, 369, 205, 207);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}
-(void)graphAnimation2{
    
    grapAni2.frame=CGRectMake(573, 578, 205, 0);
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         grapAni2.frame=CGRectMake(573, 389, 205, 189);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}
-(void)graphAnimation3{
    
    grapAni3.frame=CGRectMake(472, 499, 0, 72);
    
    [UIView animateWithDuration:1.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         grapAni3.frame=CGRectMake(472, 499, 360, 72);
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
}


-(void)tapPlate1{
    
    grapView1.hidden=NO;
    [self graphAnimation];
}
-(void)tapPlate2{
    
    grapView2.hidden=NO;
    [self graphAnimation2];
}
-(void)tapPlate3{
    
    grapView3.hidden=NO;
    [self graphAnimation3];
}
-(void)tapTochangeImage{
    
    drag1Img.hidden=YES;
    drag2Img.hidden=YES;
    drag3Img.hidden=YES;
    
    d1.hidden=NO;
    d2.hidden=NO;
    d3.hidden=NO;
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

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
    [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
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

- (IBAction)closeAction:(id)sender {
    grapView1.hidden=YES;
    grapView2.hidden=YES;
    grapView3.hidden=YES;
}
@end

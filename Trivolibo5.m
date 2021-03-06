//
//  Trivolibo5.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 13/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "Trivolibo5.h"

@interface Trivolibo5 ()

@end

@implementation Trivolibo5
@synthesize popupView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    popupView.hidden=YES;
    
    popupView.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(graphView:)];
    
    tapGesture.numberOfTapsRequired = 1;
    
    [tapGesture setDelegate:self];
    
    [popupView addGestureRecognizer:tapGesture];

}

- (void) graphView: (id)sender
{
    popupView.hidden=YES;
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
    Trivolibo4 *Trivolibo4Obj=[[Trivolibo4 alloc]init];
    [self.navigationController pushViewController:Trivolibo4Obj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    Trivolibo6 *Trivolibo6Obj=[[Trivolibo6 alloc]init];
    [self.navigationController pushViewController:Trivolibo6Obj animated:NO];
}

- (IBAction)popupAction:(id)sender {
    popupView.hidden=NO;
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

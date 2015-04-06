//
//  Trivolibo6.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 13/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "Trivolibo6.h"

@interface Trivolibo6 ()

@end

@implementation Trivolibo6
@synthesize graphAnim,tt1,tt2,ref;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self graphAnimation];
    val = FALSE;
}
- (IBAction)refAction:(id)sender {
    
    if (val == 0) {
        ref.hidden = NO;
        val = TRUE;
    }else{
        ref.hidden = YES;
        val = FALSE;
    }
    
    
}
-(void)graphAnimation{
    
    [tt1 setAlpha:0.0];
    [tt2 setAlpha:0.0];
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [tt2 setAlpha:1.0];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    [UIView animateWithDuration:1.0
                          delay:1.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [tt1 setAlpha:1.0];
                         
                         
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
- (IBAction)homeAction:(id)sender {
    
    HomeViewController *HomeViewControllerObj=[[HomeViewController alloc]init];
    [self.navigationController pushViewController:HomeViewControllerObj animated:NO];
}

- (IBAction)swipeRight:(id)sender {
    Trivolibo5 *Trivolibo5Obj=[[Trivolibo5 alloc]init];
    [self.navigationController pushViewController:Trivolibo5Obj animated:NO];
}

- (IBAction)swipeLeft:(id)sender {
    Trivolibo7 *Trivolibo7Obj=[[Trivolibo7 alloc]init];
    [self.navigationController pushViewController:Trivolibo7Obj animated:NO];
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

//
//  HomeViewController.m
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize dragaableTriVoliboImg,dragaableVoliboImg,dragaableVoliboMImg,dropableImgView;

//----------------------------------- for drag and drop Method------------------------------------------------------------//

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    if ([touch view] == dragaableVoliboImg){
       dragaableVoliboImg.center = location;
    }
    if ([touch view] == dragaableTriVoliboImg){
        dragaableTriVoliboImg.center = location;
    }
    if ([touch view] == dragaableVoliboMImg){
        dragaableVoliboMImg.center = location;
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [self touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    if (location.x > 320 && location.x < 683) {
        
        if (location.y > 120 && location.y < 511) {
            
            if ([touch view] == dragaableVoliboImg){
                dragaableVoliboImg.frame = CGRectMake(413, 232, 198, 198);
                
                [NSTimer scheduledTimerWithTimeInterval:0.20 target:self selector:@selector(gotoVolibo)userInfo:nil repeats:NO];
                
            }else if ([touch view] == dragaableTriVoliboImg){
                dragaableTriVoliboImg.frame = CGRectMake(413, 232, 198, 198);
                
                [NSTimer scheduledTimerWithTimeInterval:0.20 target:self selector:@selector(gotoVolibotri)userInfo:nil repeats:NO];
                
            }else if ([touch view] == dragaableVoliboMImg){
                dragaableVoliboMImg.frame = CGRectMake(413, 232, 198, 198);
                
                 [NSTimer scheduledTimerWithTimeInterval:0.20 target:self selector:@selector(gotoVoliboM)userInfo:nil repeats:NO];
            }
            
        }else{
            
            if ([touch view] == dragaableVoliboImg){
                 dragaableVoliboImg.frame = CGRectMake(162, 65, 198, 198);
            }else if ([touch view] == dragaableTriVoliboImg){
                dragaableTriVoliboImg.frame = CGRectMake(409, 518, 197, 197);
            }else if ([touch view] == dragaableVoliboMImg){
                dragaableVoliboMImg.frame = CGRectMake(662, 65, 198, 198);
            }
          
        }
        
    }else{
        if ([touch view] == dragaableVoliboImg){
            dragaableVoliboImg.frame = CGRectMake(162, 65, 198, 198);
        }else if ([touch view] == dragaableTriVoliboImg){
            dragaableTriVoliboImg.frame = CGRectMake(409, 518, 197, 197);
        }else if ([touch view] == dragaableVoliboMImg){
            dragaableVoliboMImg.frame = CGRectMake(662, 65, 198, 198);
        }
    }
    
}

//----------------------------------------------------------------------------------------------------------------------------------//

-(void)gotoVolibo{
//        Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
//        [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
    VLandingPage *VLandingPageObj=[[VLandingPage alloc]init];
    [self.navigationController pushViewController:VLandingPageObj animated:NO];
}
-(void)gotoVoliboM{
//    VolibomViewController *VolibomViewControllerObj=[[VolibomViewController alloc]init];
//    [self.navigationController pushViewController:VolibomViewControllerObj animated:NO];
    MLandingPage *MLandingPageObj=[[MLandingPage alloc]init];
    [self.navigationController pushViewController:MLandingPageObj animated:NO];
}
-(void)gotoVolibotri{
//    Trivolibo1 *Trivolibo1Obj=[[Trivolibo1 alloc]init];
//    [self.navigationController pushViewController:Trivolibo1Obj animated:NO];
    
    TLandingPage *TLandingPageObj=[[TLandingPage alloc]init];
    [self.navigationController pushViewController:TLandingPageObj animated:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
//    SartUpVideo *SartUpVideoObj=[[SartUpVideo alloc]init];
//    [self.navigationController pushViewController:SartUpVideoObj animated:NO];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    
//    Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
//    [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
}

- (IBAction)homeAction:(id)sender {
    
    SartUpVideo *SartUpVideoObj=[[SartUpVideo alloc]init];
    [self.navigationController pushViewController:SartUpVideoObj animated:NO];
}
@end

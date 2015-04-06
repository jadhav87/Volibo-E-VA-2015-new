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
@synthesize img1,img2,img3,img4,ref;
@synthesize text1,text2,text3,text4,pdfView,webPdf;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
      NSLog(@" this is EfficancyViewController");
    [self graphAnimation];
    [self textAnimation];
    
    val = FALSE;
    
    ref.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(pdfView:)];
    
    tapGesture1.numberOfTapsRequired = 1;
    
    [tapGesture1 setDelegate:self];
    [ref addGestureRecognizer:tapGesture1];
    
    _refcloseImg.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(pdfView:)];
    
    tapGesture2.numberOfTapsRequired = 1;
    
    [tapGesture2 setDelegate:self];
    [ref addGestureRecognizer:tapGesture2];
    
    //--------------------------------------- load pdf -----------------------------------------------------//
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Jr of Japanese society of Nutrition and food science  45 27 1992" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [[webPdf scrollView] setContentOffset:CGPointMake(0,500) animated:YES];
    webPdf.backgroundColor = [UIColor clearColor];
    [webPdf stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [webPdf loadRequest:request];

}
- (void) pdfView: (id)sender
{
    pdfView.hidden = NO;
    
}
-(void)textAnimation{
    
    [text1 setAlpha:0.0f];
    [text2 setAlpha:0.0f];
    [text3 setAlpha:0.0f];
    [text4 setAlpha:0.0f];
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [text1 setAlpha:1.0f];

                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:1.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [text2 setAlpha:1.0f];

                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:1.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [text3 setAlpha:1.0f];
 
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:2.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [text4 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];




}
-(void)graphAnimation{
    
    [img1 setAlpha:0.0f];
    [img2 setAlpha:0.0f];
    [img3 setAlpha:0.0f];
    [img4 setAlpha:0.0f];
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img1 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];

    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img1 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img2 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img3 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img4 setAlpha:1.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
         [self fadein];
     }];
    
    
    
}

-(void)fadein{
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img1 setAlpha:0.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img1 setAlpha:0.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img2 setAlpha:0.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img3 setAlpha:0.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
     }];
    
    [UIView animateWithDuration:0.5
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
                         [img4 setAlpha:0.0f];
                         
                         
                     }
                     completion:^(BOOL finished)
     {
         [self graphAnimation];
     }];
    
    
    
}



- (IBAction)closePdf:(id)sender {
    
    pdfView.hidden = YES;
    ref.hidden = YES;
    val = FALSE;
}

- (IBAction)swipeRight:(id)sender {
    Volibo_ViewController *Volibo_ViewControllerObj=[[Volibo_ViewController alloc]init];
    [self.navigationController pushViewController:Volibo_ViewControllerObj animated:NO];
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

- (IBAction)swipeLeft:(id)sender {
    
    page2ViewController *page2ViewControllerObj=[[page2ViewController alloc]init];
    [self.navigationController pushViewController:page2ViewControllerObj animated:NO];
}

- (IBAction)refAction:(id)sender {
    NSLog(@"%hhu",val);
    if (val == 0) {
        ref.hidden = NO;
         val = TRUE;
    }else{
        ref.hidden = YES;
        val = FALSE;
    }
   
    
}

- (IBAction)refCloseAction:(id)sender {
    
    ref.hidden = YES;
    val = FALSE;
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

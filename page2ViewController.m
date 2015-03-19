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
@synthesize grapView1,grapView2,grapView3,grapAni,grapAni2,grapAni3,ref,ref2,ref3;
@synthesize pdf1,pdf2,pdf3,pdfview1,pdfview2,pdfview3;

- (void)viewDidLoad {
    NSLog(@" this is page 2");
    [super viewDidLoad];
    val = FALSE;
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
    
  //-----------------------------------------------------------------------------------------------------------------------//
    grapView1.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(touchToEnd)];
    
    tapGesture.numberOfTapsRequired = 1;
    
    [tapGesture setDelegate:self];
    
    [grapView1 addGestureRecognizer:tapGesture];
    
    //-----------------------------------------------------------------------------------------------------------------------//
    grapView2.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(touchToEnd)];
    
    tapGesture1.numberOfTapsRequired = 1;
    
    [tapGesture1 setDelegate:self];
    
    [grapView2 addGestureRecognizer:tapGesture1];
    
    //-----------------------------------------------------------------------------------------------------------------------//
    grapView3.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(touchToEnd)];
    
    tapGesture2.numberOfTapsRequired = 1;
    
    [tapGesture2 setDelegate:self];
    
    [grapView3 addGestureRecognizer:tapGesture2];
    //--------------------------------------------------------------------------------------------------------------------------//
    
    ref.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(viewPdf1)];
    
    tapGesture3.numberOfTapsRequired = 1;
    
    [tapGesture3 setDelegate:self];
    
    [ref addGestureRecognizer:tapGesture3];
    
    //--------------------------------------------------------------------------------------------------------------------------//
    
    ref2.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(viewPdf2)];
    
    tapGesture4.numberOfTapsRequired = 1;
    
    [tapGesture4 setDelegate:self];
    
    [ref2 addGestureRecognizer:tapGesture4];
    
    //--------------------------------------------------------------------------------------------------------------------------//
    
    ref3.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture5 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(viewPdf2)];
    
    tapGesture5.numberOfTapsRequired = 1;
    
    [tapGesture5 setDelegate:self];
    
    [ref3 addGestureRecognizer:tapGesture5];
    
    //-------------------------------------------------- add pdf to web view -------------------------------------------------//
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Jr of Int Med Res_1998_26_219-232" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [[pdf1 scrollView] setContentOffset:CGPointMake(0,500) animated:YES];
    pdf1.backgroundColor = [UIColor clearColor];
    [pdf1 stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [pdf1 loadRequest:request];
    
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"Diabetes Care_ 1998 Feb_21(2)_256-60." ofType:@"pdf"];
    NSURL *targetURL1 = [NSURL fileURLWithPath:path1];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:targetURL1];
    [[pdf2 scrollView] setContentOffset:CGPointMake(0,500) animated:YES];
    pdf2.backgroundColor = [UIColor clearColor];
    [pdf2 stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [pdf2 loadRequest:request1];
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"Lancet_ 2009 May 9_373(9675)_1607-14" ofType:@"pdf"];
    NSURL *targetURL2 = [NSURL fileURLWithPath:path2];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:targetURL2];
    [[pdf3 scrollView] setContentOffset:CGPointMake(0,500) animated:YES];
    pdf3.backgroundColor = [UIColor clearColor];
    [pdf3 stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [pdf3 loadRequest:request2];




}
-(void)viewPdf1{
    
    pdfview1.hidden = NO;
    pdfview2.hidden = YES;
    pdfview3.hidden= YES;
    
}
-(void)viewPdf2{;
    
    pdfview1.hidden = YES;
    pdfview2.hidden = NO;
    pdfview3.hidden= YES;
    
}
-(void)viewPdf3{
    
    pdfview1.hidden = YES;
    pdfview2.hidden = YES;
    pdfview3.hidden= NO;
    
}
-(void)touchToEnd{
    
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
    
//    grapAni3.frame=CGRectMake(491, 508, 1, 63);
    grapAni3.frame=CGRectMake(491, 508, 366, 63);
    [grapAni3 setAlpha:0.0];
    
    [UIView animateWithDuration:1.0
                          delay:0.1
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         
//                         grapAni3.frame=CGRectMake(491, 508, 366, 63);
                         [grapAni3 setAlpha:1.0];
                         
                         
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

- (IBAction)reAction:(id)sender {
    if (val == 0) {
        ref.hidden = NO;
        val = TRUE;
    }else{
        ref.hidden = YES;
        val = FALSE;
    }
}

- (IBAction)closeRef:(id)sender {
    ref.hidden = YES;
    val = FALSE;
}

- (IBAction)re2Action:(id)sender {
    if (val == 0) {
        ref2.hidden = NO;
        val = TRUE;
    }else{
        ref2.hidden = YES;
        val = FALSE;
    }
}

- (IBAction)closere2Action:(id)sender {
    
    ref2.hidden = YES;
    val = FALSE;
}

- (IBAction)re3Action:(id)sender {
    if (val == 0) {
        ref3.hidden = NO;
        val = TRUE;
    }else{
        ref3.hidden = YES;
        val = FALSE;
    }

}

- (IBAction)closere3Action:(id)sender {
    ref3.hidden = YES;
    val = FALSE;
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    EfficancyViewController *EfficancyViewControllerObj=[[EfficancyViewController alloc]init];
    [self.navigationController pushViewController:EfficancyViewControllerObj animated:NO];;
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    TolerabikityViewController *TolerabikityViewControllerObj=[[TolerabikityViewController alloc]init];
    [self.navigationController pushViewController:TolerabikityViewControllerObj animated:NO];
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
- (IBAction)closePdf:(id)sender {
    
    pdfview1.hidden = YES;
    pdfview2.hidden = YES;
    pdfview3.hidden= YES;
    
    ref.hidden = YES;
    ref2.hidden = YES;
    ref3.hidden = YES;
    val = FALSE;
}
@end

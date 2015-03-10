//
//  HomeViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 09/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Volibo_ViewController.h"
#import "ViewController.h"

@interface HomeViewController : UIViewController
{
    IBOutlet UIImageView *dragaableVoliboImg;
    IBOutlet UIImageView *dragaableVoliboMImg;
    IBOutlet UIImageView *dragaableTriVoliboImg;
    IBOutlet UIImageView *dropableImgView;
}
@property(nonatomic,retain)IBOutlet UIImageView *dragaableVoliboImg;
@property(nonatomic,retain)IBOutlet UIImageView *dragaableVoliboMImg;
@property(nonatomic,retain)IBOutlet UIImageView *dragaableTriVoliboImg;
@property(nonatomic,retain)IBOutlet UIImageView *dropableImgView;

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
@end

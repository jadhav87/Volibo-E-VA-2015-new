//
//  Trivolibo3.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "Trivolibo2.h"
#import "Trivolibo4.h"
#import "Trivolibo1.h"
#import "Header.h"

@interface Trivolibo3 : UIViewController
{
    IBOutlet UIImageView *animation1;
    IBOutlet UIImageView *animation2;
    IBOutlet UIImageView *animation3;
}
@property(nonatomic,retain)IBOutlet UIImageView *animation1;
@property(nonatomic,retain)IBOutlet UIImageView *animation2;
@property(nonatomic,retain)IBOutlet UIImageView *animation3;
- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
@end

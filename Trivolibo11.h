//
//  Trivolibo11.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 13/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Trivolibo10.h"
#import "HomeViewController.h"
#import "Trivolibo12.h"

@interface Trivolibo11 : UIViewController
{
    IBOutlet UIImageView *loopAnimation;
}
@property(nonatomic,retain)IBOutlet UIImageView *loopAnimation;
- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
@end

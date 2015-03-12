//
//  Trivolibo6.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 13/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "Trivolibo5.h"
@interface Trivolibo6 : UIViewController
{
    IBOutlet UIImageView *graphAnim;
}
@property(nonatomic,retain)IBOutlet UIImageView *graphAnim;
- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
@end

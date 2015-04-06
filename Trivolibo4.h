//
//  Trivolibo4.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "Trivolibo3.h"
#import "Trivolibo5.h"

@interface Trivolibo4 : UIViewController
{
    IBOutlet UIImageView *graphAnim;
    IBOutlet UIImageView *ref;
    Boolean val;
}
- (IBAction)refAction:(id)sender;
@property(nonatomic,retain)IBOutlet UIImageView *ref;
@property(nonatomic,retain)IBOutlet UIImageView *graphAnim;

- (IBAction)homeAction:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
@end

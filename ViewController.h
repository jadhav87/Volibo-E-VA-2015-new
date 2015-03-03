//
//  ViewController.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 24/02/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Volibo_ViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *volibo;
    IBOutlet UIButton *voliboM;
    IBOutlet UIButton *triVolibo;
    
}
- (IBAction)gotoVolibo:(id)sender;
- (IBAction)gtotVoliboM:(id)sender;
- (IBAction)gotoTriVolibo:(id)sender;
@end

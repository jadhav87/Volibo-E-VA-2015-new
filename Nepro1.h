//
//  Nepro1.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 13/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "NephroViewController.h"
#import "HomeViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "HomeViewController.h"
#import "VolibomFirst.h"

@interface Nepro1 : UIViewController
{
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
    
    UIButton *button6;
}
@property(nonatomic,retain)UIButton *button6;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)homeAction:(id)sender;
@end

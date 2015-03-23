//
//  MLandingPage.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 21/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Nepro1.h"
#import "HomeViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "VolibomViewController.h"

@interface MLandingPage : UIViewController
{
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
    UIButton *button6;
}
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
@property(nonatomic,retain)UIButton *button6;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)homeAction:(id)sender;
@end

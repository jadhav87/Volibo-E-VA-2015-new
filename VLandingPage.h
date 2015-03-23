//
//  VLandingPage.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 21/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Volibo_ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "HomeViewController.h"

@interface VLandingPage : UIViewController
{
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
}
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeLeft:(id)sender;
@end

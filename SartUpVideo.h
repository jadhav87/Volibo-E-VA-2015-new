//
//  SartUpVideo.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 24/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import "HomeViewController.h"

@interface SartUpVideo : UIViewController
{
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
}
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
@end

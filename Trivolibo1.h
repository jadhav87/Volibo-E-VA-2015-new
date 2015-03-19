//
//  Trivolibo1.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 12/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
#import "Trivolibo2.h"
#import "Trivolibo3.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface Trivolibo1 : UIViewController
{
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
}
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
- (IBAction)swipeLeft:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)popupView:(id)sender;
@end

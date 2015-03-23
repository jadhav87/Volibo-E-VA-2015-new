//
//  TLandingPage.h
//  Volibo-E-VA-2015
//
//  Created by Vineet on 21/03/15.
//  Copyright (c) 2015 Vineet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Trivolibo1.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
@interface TLandingPage : UIViewController
{
    MPMoviePlayerViewController *moviePlayer;
    MPMoviePlayerController *moviePlayerController;
}
@property (strong, nonatomic) MPMoviePlayerController *videoPlayer;
- (IBAction)swipeLeft:(id)sender;
@end

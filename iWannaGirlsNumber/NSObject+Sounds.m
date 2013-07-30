//
//  NSObject+Sounds.m
//  KnewOneApp
//
//  Created by Snowmanzzz on 13-7-30.
//  Copyright (c) 2013年 knewoneApp. All rights reserved.
//

#import "NSObject+Sounds.h"
#import <AudioToolbox/AudioToolbox.h>

static SystemSoundID touchDownSoundID;
static SystemSoundID touchUpSoundID;
//static SystemSoundID touchNewHourSoundID;
static SystemSoundID touchNewEventSoundID;
static SystemSoundID pullMenuOutSoundID;
static SystemSoundID pushMenuInSoundID;

@implementation NSObject (Sounds)

-(void)playTouchDownSound {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path  = [[NSBundle mainBundle] pathForResource:@"Click Pop (Medium 1)" ofType:@"wav"];
        NSURL *pathURL = [NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &touchDownSoundID);
    });
    AudioServicesPlaySystemSound(touchDownSoundID);
}

-(void)playTouchUpSound {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path  = [[NSBundle mainBundle] pathForResource:@"Click Pop (Medium 2)" ofType:@"wav"];
        NSURL *pathURL = [NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &touchUpSoundID);
    });
    AudioServicesPlaySystemSound(touchUpSoundID);
}

-(void)playTouchNewHourSound {
    //    static dispatch_once_t onceToken;
    //    dispatch_once(&onceToken, ^{
    //        NSString *path  = [[NSBundle mainBundle] pathForResource:@"soundeffect" ofType:@"wav"];
    //        NSURL *pathURL = [NSURL fileURLWithPath:path];
    //        AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &touchNewHourSoundID);
    //    });
    //    AudioServicesPlaySystemSound(touchNewHourSoundID);
}

-(void)playTouchNewEventSound {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path  = [[NSBundle mainBundle] pathForResource:@"Click Pop (Subtle 1)" ofType:@"wav"];
        NSURL *pathURL = [NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &touchNewEventSoundID);
    });
    AudioServicesPlaySystemSound(touchNewEventSoundID);
}

-(void)playPullMenuOutSound {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path  = [[NSBundle mainBundle] pathForResource:@"Pull Down (Light)" ofType:@"wav"];
        NSURL *pathURL = [NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &pullMenuOutSoundID);
    });
    AudioServicesPlaySystemSound(pullMenuOutSoundID);
}

-(void)playPushMenuInSound {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path  = [[NSBundle mainBundle] pathForResource:@"Pull Down (Light)" ofType:@"wav"];
        NSURL *pathURL = [NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)pathURL, &pushMenuInSoundID);
    });
    AudioServicesPlaySystemSound(pushMenuInSoundID);
}

@end

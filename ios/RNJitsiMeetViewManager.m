//
//  RNJitsiMeetViewManager.m
//  RNJitsiLib
//
//  Created by Pham Minh Khoa on 5/15/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTViewManager.h>
#import <JitsiMeet/JitsiMeetView.h>

@interface RNJitsiMeetViewManager : RCTViewManager

@end

@implementation RNJitsiMeetViewManager {
    JitsiMeetView *jitsiView;
}

RCT_EXPORT_MODULE(RNJitsiMeetView)

@synthesize bridge = _bridge;
- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

- (UIView *)view
{
    jitsiView = [[JitsiMeetView alloc] init];
    return jitsiView;
}

RCT_EXPORT_VIEW_PROPERTY(room, NSString)

RCT_EXPORT_METHOD(joinRoom)
{
    NSLog(@"ahihi join room");
    
    //join the room
    JitsiMeetConferenceOptions *option = [JitsiMeetConferenceOptions
                                          fromBuilder:^(JitsiMeetConferenceOptionsBuilder * builder) {
                                              builder.serverURL = [NSURL URLWithString:jitsiView.serverURL];
                                              builder.room = jitsiView.room;
                                              builder.audioOnly = NO;
                                              builder.audioMuted = NO;
                                              builder.videoMuted = NO;
                                          }];
    [jitsiView join:option];
}


@end

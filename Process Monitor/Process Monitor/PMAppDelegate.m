//
//  PMAppDelegate.m
//  Process Monitor
//
//  Created by Alex Zen on 01.10.13.
//  Copyright (c) 2013 Alex Zen. All rights reserved.
//

#import "PMAppDelegate.h"

@implementation PMAppDelegate
@synthesize contents;

- (void)updateProcessList
{
    NSWorkspace* workspace = [NSWorkspace sharedWorkspace];
    self.contents = [NSArray arrayWithArray:[workspace runningApplications]];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self updateProcessList];
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(updateProcessList)
                                   userInfo:nil
                                    repeats:YES];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}



@end

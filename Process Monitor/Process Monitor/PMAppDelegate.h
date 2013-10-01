//
//  PMAppDelegate.h
//  Process Monitor
//
//  Created by Alex Zen on 01.10.13.
//  Copyright (c) 2013 Alex Zen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PMAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (retain) NSArray *contents;

@end

//
//  SLAppDelegate.m
//  SLNavigationBar
//
//  Created by smilelu on 08/22/2016.
//  Copyright (c) 2016 smilelu. All rights reserved.
//

#import "SLAppDelegate.h"
#import "SLBaseNaviController.h"
#import "SLViewController.h"

@implementation SLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[SLBaseNaviController alloc] initWithRootViewController:[[SLViewController alloc] init]];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end

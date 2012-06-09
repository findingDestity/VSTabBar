//
//  VSAppDelegate.m
//  VSTabBarExample
//
//  Created by Vincent Saluzzo on 30/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VSAppDelegate.h"

#import "VSViewController.h"
#import "VSTabBarController.h"
@implementation VSAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    //Uncomments this parts to execute the example of VSTabBar
//    self.viewController = [[[VSViewController alloc] initWithNibName:@"VSViewController" bundle:nil] autorelease];
//    self.window.rootViewController = self.viewController;
    
    //Uncomment this parts to exectute the example of VSTabBarController
    VSTabBarController* tabBarController = [[VSTabBarController alloc] initWithNibName:nil bundle:nil];
    
    UIViewController* vc1 = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    [vc1 setView:[[UIView alloc] initWithFrame:self.window.bounds]];
    vc1.view.backgroundColor = [UIColor redColor];
    
    UIViewController* vc2 = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    [vc2 setView:[[UIView alloc] initWithFrame:self.window.bounds]];
    vc2.view.backgroundColor = [UIColor greenColor];
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:vc1, vc2, nil];

    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

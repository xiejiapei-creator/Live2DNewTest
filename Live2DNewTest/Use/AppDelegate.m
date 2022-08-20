//
//  AppDelegate.m
//  Live2DNewTest
//
//  Created by 谢佳培 on 2022/8/17.
//

#import "AppDelegate.h"
#import "ViewController.h"
#include "L2DCubism.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window.backgroundColor = [UIColor whiteColor];
    ViewController *vc = [[ViewController alloc] init];
    window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
    [window makeKeyAndVisible];
    self.window = window;

    [L2DCubism initializeLive2D];

    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [L2DCubism dispose];
}
@end

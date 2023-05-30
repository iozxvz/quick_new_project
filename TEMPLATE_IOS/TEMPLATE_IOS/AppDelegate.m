//
//  AppDelegate.m
//  TEMPLATE_IOS
//
//  Created by 方超 on 2023/5/26.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <QKit/QKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self appSetup];
    [self uiSetup];
    return YES;
}

- (void)appSetup {
}

- (void)uiSetup {
    self.window = Q.mainWindow;
    
    ViewController *root = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:root];
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
}

@end

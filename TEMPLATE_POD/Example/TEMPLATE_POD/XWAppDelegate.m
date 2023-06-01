//
//  XWAppDelegate.m
//  TEMPLATE_POD
//
//  Created by fangchao on 05/26/2023.
//  Copyright (c) 2023 fangchao. All rights reserved.
//

#import "XWAppDelegate.h"
#import "XWViewController.h"
#import <QKit/QKit.h>

@implementation XWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self appSetup];
    [self uiSetup];
    return YES;
}

- (void)appSetup {
}

- (void)uiSetup {
    self.window = Q.mainWindow;
    
    XWViewController *root = [[XWViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:root];
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
}

@end

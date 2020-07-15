//
//  AppDelegate.m
//  Task6
//
//  Created by Лера on 6/22/20.
//  Copyright © 2020 com.vkravets. All rights reserved.
//

#import "AppDelegate.h"
#import "StartViewController.h"
#import "InfoViewController.h"
#import "GalleryViewController.h"
#import "Task6ViewController.h"
#import "UIColor+ColorPalette.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
//    self.window.rootViewController = [StartViewController new];
//    [self.window makeKeyAndVisible];
    [self rootStartViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)rootStartViewController {
//    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [StartViewController new];

}

- (void)rootViewController {

    UINavigationController *navigationController1 = [[UINavigationController alloc] initWithRootViewController: [InfoViewController new]];
    navigationController1.tabBarItem = [[UITabBarItem alloc] initWithTitle: nil image: [UIImage imageNamed: @"list"] tag: 0];

    UINavigationController *navigationController2 = [[UINavigationController alloc] initWithRootViewController: [GalleryViewController new]];
    navigationController2.tabBarItem = [[UITabBarItem alloc] initWithTitle: nil image: [UIImage imageNamed: @"art"] tag: 0];

    UINavigationController *navigationController3 = [[UINavigationController alloc] initWithRootViewController: [Task6ViewController new]];
    navigationController3.tabBarItem = [[UITabBarItem alloc] initWithTitle: nil image: [UIImage imageNamed: @"browser"] tag: 0];

    UITabBarController *tabBarController = [UITabBarController new];
    tabBarController.viewControllers = @[navigationController1, navigationController2, navigationController3];

    for (UINavigationController *nv in tabBarController.viewControllers) {
        nv.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: UIColor.customBlack};
        nv.navigationBar.barTintColor = UIColor.customYellow;
        nv.modalPresentationCapturesStatusBarAppearance = true;
    }


    tabBarController.tabBar.barTintColor = UIColor.customWhite;
    tabBarController.tabBar.tintColor = UIColor.customBlack;
    [tabBarController setSelectedIndex:1];

    self.window.rootViewController = tabBarController;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
//    self.isActive = true;
//    [[NSNotificationCenter defaultCenter] postNotificationName: @"updateInfoTable"
//    object:self];
}

@end

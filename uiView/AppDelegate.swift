//
//  AppDelegate.swift
//  uiView
//
//  Created by J&K on 2018/7/31.
//  Copyright © 2018年 J&K. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        window?.rootViewController=UINavigationController(rootViewController: RootViewController())
//            window?.rootViewController = UINavigationController(rootViewController: FirstViewController())
        
        
        let wechat = WeChatViewController()
        //未选中的tab图片
        wechat.tabBarItem.image = UIImage(named: "tab1")?.withRenderingMode(.alwaysOriginal)
        //选中的砖塔的tab图片
        wechat.tabBarItem.selectedImage = UIImage(named: "selectTab1")?.withRenderingMode(.alwaysOriginal)
        //tab的文本
//        wechat.tabBarItem.title = "微信"

        let addressBook = AddressBookViewController()
        addressBook.tabBarItem.image = UIImage(named: "tab2")?.withRenderingMode(.alwaysOriginal)
        addressBook.tabBarItem.selectedImage = UIImage(named: "selectTab2")?.withRenderingMode(.alwaysOriginal)
//        addressBook.tabBarItem.title = "通讯录"

        let find = FindViewController()
        find.tabBarItem.image = UIImage(named: "tab3")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "selectTab3")?.withRenderingMode(.alwaysOriginal)
//        find.tabBarItem.title = "发现"

        let mine = MineViewController()
        mine.tabBarItem.image = UIImage(named: "tab4")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "selectTab4")?.withRenderingMode(.alwaysOriginal)
//        mine.tabBarItem.title = "我的"

        let tabBarController = UITabBarController()
//           tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.backgroundColor =  UIColor(red: 17 / 255.0, green: 182 / 255.0, blue: 162 / 255.0, alpha: 1.0)
        tabBarController.tabBar.backgroundImage =  UIImage()
                tabBarController.tabBar.tintColor = UIColor.white
        wechat.title="微信"
        let wechatNavigationController = UINavigationController(rootViewController: wechat)

        addressBook.title = "通讯录"
        let addressBookNavigationController = UINavigationController(rootViewController: addressBook)
        find.title = "发现"
        let findNavigaitonController = UINavigationController(rootViewController: find)
        mine.title = "我的"
        let mineNavigationController = UINavigationController(rootViewController: mine)
tabBarController.hidesBottomBarWhenPushed = true
        tabBarController.viewControllers = [wechatNavigationController,addressBookNavigationController,findNavigaitonController,mineNavigationController]

  
        
//

//

//        tabBarController.viewControllers = [wechat,addressBook,find,mine]
//
        tabBarController.selectedIndex = 0
//          wechat.tabBarItem.badgeValue = "10"

        window?.rootViewController = tabBarController

        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


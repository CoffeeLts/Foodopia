//
//  AppDelegate.swift
//  Foodtopia
//
//  Created by RTC13 on 2017/8/24.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
//        init(name: String, location: String, phone: String, image: String) {

        var restaurants: [Restaurant] = [Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox"),
                                    Restaurant("九湯屋日本拉麵(逢甲店)","台中市西屯區文華路175號","0971-233678","jiutang"),
                                    Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox"),
                                    Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox"),
                                    Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox"),
                                    Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox"),
                                    Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox"),
                                    Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","blackbox")]
        
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


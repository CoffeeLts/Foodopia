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
    
    var restaurants: [Restaurant] = [Restaurant("黑盒子丼飯鐵板燒","台中市西屯區文華路115號","04 2708 4575","BlackBox", "BlackBoxMenu"),
                                     Restaurant("九湯屋日本拉麵(逢甲店)","台中市西屯區文華路175號","0971-233678","JiuTangWu","JiuTangWuMenu"),
                                     Restaurant("腦子有丼","台中市西屯區文華路207號","04 2451 8089","Donmeal","DonmealMenu"),
                                     Restaurant("采佳鄉","台中市西屯區福星路584號","04 2451 6707","CaiJiaXiang","CaiJiaXiangMenu"),
                                     Restaurant("吉野烤肉飯","台中市西屯區文華路127巷7號","04 2707 1725","Jiye","JiyeMenu"),
                                     Restaurant("斑馬線","台中市西屯區文華路127巷5號","0938 821 200","zebra","zebraMenu"),
                                     Restaurant("Lettuce 美式漢堡.潛艇堡.生菜沙拉","台中市西屯區福上巷329號","0987-078-982","Lettuce","LettuceMenu"),
                                     Restaurant("黑豬咖哩","台中市西屯區西安街217號","04 2452 9727","Pig","PigMenu"),
                                     Restaurant("擄胃專家","台中市西屯區文華路127巷22號","04 2451 9878","LuWei","LuWeiMenu"),
                                     Restaurant("HUN 貳","台中市西屯區文華路217之8號","04 2708 5878","HUN","HUNMenu"),
                                     Restaurant("傻瓜麵","台中市西屯區逢甲路19巷1號","04 2451 8173","fool","foolMenu"),
                                     Restaurant("福星小吃店","台中市西屯區福星路330號","04 2706 0288","FuShing","FuShingMenu"),
                                     Restaurant("大丁日式豚骨拉麵","台中市西屯區文華路121之31號","04 2451 9717","DaDing","DaDingMenu"),
                                     Restaurant("貳捌麵魂","台中市西屯區逢甲路19巷10號B1"," 04 2453 7990","YiBie","YiBieMenu"),
                                     Restaurant("天狗炙燒牛排","台中市西屯區文華路155巷11號","04 2451 1256","TianGou","TianGouMenu"),
                                     Restaurant("珍膳坊牛肉麵","台中市西屯區文華路127巷20號","04 2452 8075","JenShanFang","JenShanFangMenu"),
                                     Restaurant("麻而辣臭豆腐","台中市西屯區文華路121之10號","0973 007 688","MaErLa","MaErLaMenu"),
                                     Restaurant("Fun輕鬆鬆餅店","台中市西屯區文華路121之5號","0981 574 907","Fun","FunMenu"),
                                     Restaurant("獅城Laksa","台中市西屯區逢甲路20巷45弄1號","0965 720 863","Laksa","LaksaMenu"),
                                     Restaurant("梅香小吃","台中市西屯區逢甲路20巷42號","04 2451 4043","MeiShiang","MeiShiangMenu"),
                                     Restaurant("阿米果","台中市西屯區逢甲路20巷28弄4號","04 2452 7112"," ","AMiGuoMenu"),
                                     Restaurant("联亭泡菜鍋","台中市西屯區福星北路29號","04 2451 5167","LainTin","LainTinMenu"),
                                     Restaurant("勝面","台中市西屯區逢甲路28號","04 2452 3252"," ","ShengMainMenu"),
                                     Restaurant("朴大哥的韓式炸雞","台中市西屯區逢甲路20巷28弄5號","0988 328 178","Pudage","PudageMenu"),
                                     Restaurant("蒸作吉食","台中市西屯區逢甲路20巷28弄3號","04 2452 4253","JengTuzoJiSz","JengTuzoJiSzMenu"),
                                     Restaurant("金浦道地韓式泡菜火鍋","台中市西屯區逢甲路20巷47號","04 2451 9684","JnPu","JnPuMenu"),
                                     Restaurant("小辣椒","台中市西屯區文華路109號","0973 007 688","SLaJiau","SLaJiauMenu"),
                                     Restaurant("小辣椒","台中市西屯區文華路127巷3號","04 2700 3698","RLaJiau","RLaJiauMenu")
    ]
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
//        init(name: String, location: String, phone: String, image: String) {

        
        
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


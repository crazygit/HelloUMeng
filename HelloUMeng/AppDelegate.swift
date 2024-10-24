//
//  AppDelegate.swift
//  Fitness
//
//  Created by Crazygit on 2023/8/3.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        // 注意: 根据实际情况替换appKey
        initUmeng(appKey: "6718d7bd80464b33f6e30afe")
        return true
    }

    func initUmeng(appKey: String) {
        // 正式发布时，不需要输出日志信息
        #if DEBUG
            UMCommonLogSwift.setUpUMCommonLogManager()
            UMCommonSwift.setLogEnabled(bFlag: true)
        #endif
        // Channel为渠道号，为空时表示App Store
        UMCommonSwift.initWithAppkey(appKey: appKey, channel: "")
    }

    // 该方法不会被调用，使用HelloUMengApp中的
//    func application(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
//        print("open url in AppDelegate: \(url.absoluteString)")
//        if MobClick.handle(url) {
//            print("handle url: \(url.absoluteString)")
//            return true
//        }
//        // 其它第三方处理
//        return true
//    }
}

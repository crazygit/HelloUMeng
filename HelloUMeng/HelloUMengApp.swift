//
//  HelloUMengApp.swift
//  HelloUMeng
//
//  Created by Crazygit on 2024/10/23.
//

import SwiftUI

@main
struct HelloUMengApp: App {
    // 设置使用AppDelegate
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    // 处理友盟的集成测试调用
                    print("onOpenURL: \(url)")
                    MobClick.handle(url)
                }
        }
    }
}

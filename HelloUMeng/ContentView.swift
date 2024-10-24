//
//  ContentView.swift
//  HelloUMeng
//
//  Created by Crazygit on 2024/10/23.
//

import Foundation
import SwiftUI

enum CustomError: Error {
    case NetworkError
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button("上报自定义事件") {
                UMAnalyticsSwift.event(eventId: "eventA")
            }
            .buttonStyle(.borderedProminent)

            Button("App崩溃上报") {
                fatalError("App崩溃上报测试")
            }
            .buttonStyle(.borderedProminent)

//             U-APM免费版本不支持
//            Button("自定义异常上报") {
//                do {
//                    throw CustomError.NetworkError
//                } catch {
//                    print("上报自定义错误测试")
//                    UMCrashConfigure.reportException(withName: "崩溃采集测试", reason: "测试", stackTrace: [error])
//                }
//            }
        }.padding()
    }
}

#Preview {
    ContentView()
}

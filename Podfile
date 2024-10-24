# Uncomment the next line to define a global platform for your project
platform :ios, '17.0'

def umeng_pods
  # 基础库,必须集成
  pod 'UMCommon'
  pod 'UMDevice'

  # 开发阶段进行调试SDK及相关功能使用，可在发布 App 前移除
  pod 'UMCCommonLog'

  # 下面的库根据需要使用的服务选择性按照
  pod 'UMAPM' # APM组件，原错误分析升级为独立产品U-APM
  #pod 'UMPush'	# 推送组件，由原来的UMCPush变为UMPush
  #pod 'UMShare/UI' 	# 可选，UI模块（分享面板），由原来的UMCShare/UI变为了UMShare/UI

  # 分享SDK 在线依赖其它平台仅支持手动集成[友盟+官网-开发者中心-sdk下载页-sdk下载]
  #pod 'UMShare/Social/WeChat'
  #pod 'UMShare/Social/Sina'
  #pod 'UMShare/Social/QQ'
  #pod 'UMLink'   			# 智能超链组件
  #pod 'UMVerify'			# 智能认证组件
end

target 'HelloUMeng' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for TimeMastery
  umeng_pods
end

# 修复报错
# Xcode building for iOS Simulator, but linking in an object file built for iOS, for architecture 'arm64'
# https://stackoverflow.com/questions/63607158/xcode-building-for-ios-simulator-but-linking-in-an-object-file-built-for-ios-f
post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
  end
end

source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
inhibit_all_warnings!
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

def shared_pods
    pod 'Alamofire', '~> 4.3.0'
    pod 'SwiftLint', '~> 0.16.1'
end

def app_pods
    # UI
    pod 'SVProgressHUD',        '~> 2.1.2'

    # Utils
    pod 'AsyncSwift'
    pod 'SwiftUtils',   '~> 2.1.1'
end

def test_pods
end

target 'MyFood' do
    app_pods
    shared_pods

    target 'MyFoodTests' do
        inherit! :search_paths
        test_pods
        shared_pods
    end
end

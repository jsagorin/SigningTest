source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'

# For Swift:
use_frameworks!
target 'SigningTest' do
	pod 'Google/Analytics'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
            config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
        end
    end
end


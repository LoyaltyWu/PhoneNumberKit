#
#  Be sure to run `pod spec lint PhoneNumberKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = "PhoneNumberKit"
  s.version          = "0.0.11"
  s.summary          = "Swift framework for working with phone numbers"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
                        A Swift framework for parsing, formatting and validating international phone numbers. Inspired by Google's libphonenumber.
                       DESC

  s.homepage         = "https://github.com/LoyaltyWu/PhoneNumberKit"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Roy Marmelstein" => "marmelroy@gmail.com" }
  s.source           = { :git => "https://github.com/LoyaltyWu/PhoneNumberKit.git", :tag => s.version.to_s }
  s.social_media_url   = "http://twitter.com/marmelroy"


  s.requires_arc = true

  s.ios.frameworks = 'CoreTelephony'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.subspec 'PhoneNumberKitCore' do |core|
    core.ios.deployment_target = '9.0'
    core.source_files = "PhoneNumberKit/*.{swift}"
    core.resources = "PhoneNumberKit/Resources/PhoneNumberMetadata.json"
  end

  s.subspec 'UIKit' do |ui|
    ui.dependency 'PhoneNumberKit/PhoneNumberKitCore'
    ui.ios.deployment_target = '9.0'
    ui.source_files = 'PhoneNumberKit/UI/'
  end

end

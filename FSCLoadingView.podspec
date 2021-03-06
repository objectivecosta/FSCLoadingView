#
# Be sure to run `pod lib lint FSCLoadingView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FSCLoadingView'
  s.version          = '1.0.5'
  s.summary          = 'FSCLoadingView is a simple loading view.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  FSCLoadingView is a simple loading view. It is blocking, and very easy to use.
                       DESC

  s.homepage         = 'https://github.com/rafaelc0sta/FSCLoadingView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rafael Costa' => 'rafael@rafaelcosta.me' }
  s.source           = { :git => 'https://github.com/rafaelc0sta/FSCLoadingView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'
  s.swift_version = "5.0"

  s.source_files = 'FSCLoadingView/Classes/**/*'
  
  s.resource_bundles = {
    'FSCLoadingView' => ['FSCLoadingView/Assets/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

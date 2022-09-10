#
# Be sure to run `pod lib lint AMPagerTabs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMPagerTabs'
  s.version          = '1.0.0'
  s.summary          = 'Pager tabs for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An iOS pager tabs version of the famous android tabs.
                       DESC

  s.homepage         = 'https://github.com/Abedalkareem/AMPagerTabs'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abedalkareem' => 'abedalkareem.omreyh@yahoo.com' }
  s.source           = { :git => 'https://github.com/Abedalkareem/AMPagerTabs.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  # s.social_media_url = 'https://twitter.com/abedalkareemomr'

  s.ios.deployment_target = '14.0'

  s.source_files = 'AMPagerTabs/AMPagerTabs/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AMPagerTabs' => ['AMPagerTabs/AMPagerTabs/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

#
# Be sure to run `pod lib lint ZXCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZXCategories'
  s.version          = '0.2.2'
  s.summary          = 'ZXCategories.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'ZXCategories分类扩展'
                       DESC

  s.homepage         = 'hhttps://github.com/MrGuys'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Apple' => '376552890@qq.com' }
  s.source           = { :git => 'https://github.com/MrGuys/ZXCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'ZXCategories/Classes/**/*'
  s.subspec 'UIKit' do |c|
    c.source_files = 'ZXCategories/Classes/UIKit/**/*'
  end
  s.subspec 'Foundation' do |c|
    c.source_files = 'ZXCategories/Classes/Foundation/**/*'
    c.frameworks = 'CommonCrypto'
  end

  # s.resource_bundles = {
  #   'ZXCategories' => ['ZXCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

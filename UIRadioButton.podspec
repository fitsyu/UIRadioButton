#
# Be sure to run `pod lib lint UIRadioButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#


Pod::Spec.new do |s|
  s.name             = 'UIRadioButton'
  s.version          = '0.1.5'
  s.summary          = 'The Most Simple Radio Button.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC

Because UIKit didn't ship it.

                       DESC

  s.homepage         = 'https://github.com/fitsyu/UIRadioButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fitsyu' => 'fitsyu2@gmail.com' }
  s.source           = { :git => 'https://github.com/fitsyu/UIRadioButton.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/fitsyu'

  s.swift_version = '5.0'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UIRadioButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UIRadioButton' => ['UIRadioButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'


end

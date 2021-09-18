#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint mediation_test.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'mediation_test'
  s.version          = '0.0.1'
  s.summary          = 'Admob Mediation Test Suite'
  s.description      = <<-DESC
Present Admob Mediation Test Suite 
                       DESC
  s.homepage         = 'http://minhnhan.in'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Long Phan' => 'long@minhnhan.in' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'GoogleMobileAdsMediationTestSuite'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.ios.deployment_target = '10.0'
  s.static_framework = true
end

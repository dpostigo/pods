Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name             = 'Andea'
  s.version          = '0.1.9'
  s.summary          = 'Extensions for Swift from the Andeas.'
  s.description      = 'Convenience initializers & other extensions.'
  s.author           = { 'Dani Postigo' => 'dani.postigo@gmail.com' }
  s.homepage         = 'https://bitbucket.com/dpostigo/Andea'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source           = { :git => 'https://github.com/dpostigo/andea.git', :tag => s.version.to_s }


  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.12'


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = 'Foundation'
  s.module_name = 'Andea'

  s.default_subspecs = 'AndeaKit', 'PlaygroundKit'


  # ――― AndeaKit –––––––―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.subspec 'AndeaKit' do |c|
    c.dependency 'Andea/Alamofire'
    c.dependency 'Andea/CoreGraphics'
    c.dependency 'Andea/Foundation'
    c.dependency 'Andea/Lorem'

  	c.ios.frameworks = 'UIKit'
    c.ios.dependency 'Andea/ActionKit'
  	c.ios.source_files = 'Sources/AndeaKit/{shared,ios}/*'

    c.osx.frameworks = 'AppKit'
  	c.osx.source_files = 'Sources/AndeaKit/{shared,macos}/*'
  end

  # ――― PlaygroundKit –––――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.subspec 'PlaygroundKit' do |c|
    c.ios.deployment_target = '11.0'
  	c.frameworks = 'UIKit'
  	c.dependency 'Andea/AndeaKit'
    c.source_files = 'Sources/PlaygroundKit/ios/**/*'
  end


  # ――― Subspecs –––––––―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.subspec 'Swift' do |c|
    c.dependency 'Qolla'
    c.source_files = 'Sources/Swift/**/*'
  end

  s.subspec 'CoreGraphics' do |c|
    c.frameworks = 'CoreGraphics'
    c.source_files = 'Sources/CoreGraphics'
  end

  s.subspec 'Foundation' do |c|
    c.source_files = 'Sources/Foundation/*'
    c.dependency 'Andea/Swift'
  end

  # ――― Third party –––––––―――――――――――――――――――――――――――――――――――――-―――――――――――――――― #

  s.subspec 'ActionKit' do |c|
    c.frameworks = 'UIKit'
    c.dependency 'ActionKit'
    c.dependency 'Andea/Foundation'
    c.ios.deployment_target = '11.0'
    c.source_files = 'Sources/ActionKit/*'
  end

  s.subspec 'Alamofire' do |c|
    c.dependency 'Alamofire'
    c.dependency 'Andea/Foundation'
    c.dependency 'Andea/Swift'
    c.source_files = 'Sources/Alamofire/**/*'
  end

  s.subspec 'Lorem' do |c|
    c.source_files = 'Sources/Lorem/*'
    c.dependency 'Andea/Swift'
  end

end

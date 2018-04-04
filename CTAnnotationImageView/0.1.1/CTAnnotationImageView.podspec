Pod::Spec.new do |s|
  s.name             = 'CTAnnotationImageView'
  s.version          = '0.1.1'
  s.summary          = 'UIImageView that captures an array of CGPoints'

  s.description      = 'A UIImageView. Captures an array of CGPoints. The description is shorter than the summary.'

  s.homepage         = 'https://github.com/dpostigo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dpostigo' => 'dani.postigo@gmail.com' }
  s.source           = { :git => 'https://github.com/centaurdiagnostics/CTAnnotationImageView.git', :tag => s.version.to_s }

  s.platform = :ios, '11.0'
  s.source_files = 'CTAnnotationImageView/*'

  s.dependency 'Andea', '>= 0.2.2'
  s.dependency 'Andea/QuartzCore'

  s.frameworks = 'UIKit', 'Foundation', 'QuartzCore'
end

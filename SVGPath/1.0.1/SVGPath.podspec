Pod::Spec.new do |s|
  s.name = "SVGPath"
  s.version = "1.0.1"
  s.summary = "A Swift Library for parsing SVG path strings into UIBezierPaths"

  s.homepage = "https://github.com/timrwood/SVGPath"

  s.license = { type: "MIT", file: "LICENSE" }

  s.author = { "Tim Wood" => "timwoodcreates@gmail.com" }
  s.social_media_url = "http://twitter.com/timtamiam"

  s.platform = :ios, "8.0"

  s.source = { :git => 'https://github.com/dpostigo/SVGPath.git', :tag => s.version.to_s }

  s.source_files = "SVGPath"
  s.requires_arc = true

  s.framework = "CoreGraphics"
end

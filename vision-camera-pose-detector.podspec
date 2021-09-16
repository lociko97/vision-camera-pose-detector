# vision-camera-pose-detector.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "vision-camera-pose-detector"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  vision-camera-pose-detector
                   DESC
  s.homepage     = "https://github.com/lociko97/vision-camera-pose-detector"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Lociko" => "lociko972@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/lociko97/vision-camera-pose-detector.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "GoogleMLKit/PoseDetection"
  # ...
  # s.dependency "..."
end


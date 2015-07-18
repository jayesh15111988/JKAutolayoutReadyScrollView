Pod::Spec.new do |s|
  s.name         = "JKAutolayoutReadyScrollView"
  s.version      = "0.0.1"
  s.summary      = "A readymade scrollview equipped with Autolayout settings."
  s.homepage     = "https://github.com/jayesh15111988/JKAutolayoutReadyScrollView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jayesh Kawli" => "j.kawli@gmail.com" }
  s.source       = { :git => "https://github.com/jayesh15111988/JKAutolayoutReadyScrollView.git", :tag => "#{s.version}"}
  s.ios.deployment_target = '7.0'
  s.source_files = 'JKAutolayoutReadyScrollView/Classes/*.{h,m}'
  s.requires_arc = true
  s.dependency 'TPKeyboardAvoiding', '~> 1.2'
end


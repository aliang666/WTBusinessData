Pod::Spec.new do |s|
  s.name         = "WTBusinessData"
  s.version      = "0.0.5"
  s.summary      = "WTBusinessData业务数据层"

  s.homepage     = "https://github.com/aliang666/WTBusinessData"

  s.license      = "MIT"
  s.author             = { "jienliang000" => "jienliang000@163.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/aliang666/WTBusinessData.git", :tag => "#{s.version}" }
  s.source_files  = "WTBusinessData/*.{h,m}"


end

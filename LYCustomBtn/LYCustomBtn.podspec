

Pod::Spec.new do |spec|

  

  spec.name         = "LYCustomBtn"
  spec.version      = "0.0.1"
  spec.summary      = "开发中常用的工具类"

  spec.description  = <<-DESC
                   开发中常用的工具类，方便实用
                   DESC

  spec.homepage     = "https://github.com/zhuzi55/LYTools"
  

  spec.license      = "MIT"
  
  spec.platform     = :ios
  
  spec.ios.deployment_target = "9.0"
  

  spec.author             = { "liyz" => "liyuzhu@wondersgroup.com" }
  
  spec.source       = { :git => "https://github.com/zhuzi55/LYTools.git", :tag => "#{spec.version}" }
  
  # 开源库依赖库
  # spec.dependency "JSONKit", "~> 1.4"


  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  
  spec.exclude_files = "Classes/Exclude"

  

end

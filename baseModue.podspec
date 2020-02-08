
Pod::Spec.new do |spec|

  spec.name         = "baseModue"
  spec.version      = "0.0.1"
  spec.summary      = "baseModue"

  spec.description  =   "baseModue,详细描述,字数比spec.summary长"

  spec.homepage     = "https://github.com/xjryuanmeng/baseModue"

  spec.license      = "MIT"

  spec.author             = { "xjryuanmeng" => "xjr1270508005@sina.com" }

  spec.source       = { :git => "https://github.com/xjryuanmeng/baseModue.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"

end

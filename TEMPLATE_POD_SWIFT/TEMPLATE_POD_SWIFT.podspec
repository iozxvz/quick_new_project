Pod::Spec.new do |s|
  s.name             = 'TEMPLATE_POD_SWIFT'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TEMPLATE_POD_SWIFT.'
  s.description      = <<-DESC
Long description of TEMPLATE_POD_SWIFT.
                       DESC

  s.homepage         = 'https://github.com/fangchao/TEMPLATE_POD_SWIFT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fangchao' => 'iozxvz@163.com' }
  s.source           = { :git => 'https://github.com/fangchao/TEMPLATE_POD_SWIFT.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'TEMPLATE_POD_SWIFT/Classes/**/*'
  s.resources = 'TEMPLATE_POD_SWIFT/Assets/**/*'
end

Pod::Spec.new do |s|
  s.name             = 'TEMPLATE_POD'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TEMPLATE_POD.'
  s.description      = <<-DESC
Long description of TEMPLATE_POD.
                       DESC

  s.homepage         = 'https://github.com/fangchao/TEMPLATE_POD'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fangchao' => 'iozxvz@163.com' }
  s.source           = { :git => 'https://github.com/fangchao/TEMPLATE_POD.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'TEMPLATE_POD/Classes/**/*'
  s.resouces = 'TEMPLATE_POD/Assets/**/*'
end

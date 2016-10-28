Pod::Spec.new do |s|
s.name             = 'AHQSLibrary'
s.version          = '0.1.0'
s.summary          = 'Some useful helpers for iOS 9+ and Swift 3.0 .'

s.description      = <<-DESC
Some useful helpers for iOS 9+ and Swift 3.0

UIViewExtension

An easy way to play with view constraints using anchors. For iOS 9+ and Swift 3.0 .
With this extension all you need is to call on method for each element in your view.

DESC

s.homepage         = 'https://github.com/ahenqs/AHQSLibrary'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'André Henrique da Silva' => 'ahenqs@gmail.com' }
s.source           = { :git => 'https://github.com/ahenqs/AHQSLibrary.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.source_files = 'AHQSLibrary/UIViewExtension.swift'

end

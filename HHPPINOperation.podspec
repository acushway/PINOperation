Pod::Spec.new do |s|
  s.name          = 'HHPPINOperation'
  s.version       = '1.2.4'
  s.homepage      = 'https://github.com/acushway/PINOperation'
  s.summary       = 'Fast, concurrency-limited task queue for iOS and OS X.'
  s.authors       = { 'Garrett Moon' => 'garrett@pinterest.com' }
  s.source        = { :git => 'https://github.com/acushway/PINOperation.git', :tag => "#{s.version}" }
  s.license       = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  s.requires_arc  = true
  s.frameworks    = 'Foundation'
  s.ios.deployment_target = '13.0'
  pch_PIN = <<-EOS
#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif
EOS
  s.prefix_header_contents = pch_PIN
  s.source_files = 'Source/**/*.{h,m,mm}'
end

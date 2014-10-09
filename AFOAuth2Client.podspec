Pod::Spec.new do |s|
  s.name     = 'AFOAuth2Client'
  s.version  = '0.1.2'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking Extension for OAuth 2 Authentication.'
  s.homepage = 'https://github.com/AFNetworking/AFOAuth2Client'
  s.author   = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/nybex/AFOAuth2Client.git',
                 :tag => "v#{s.version.to_s}" }

  s.source_files = 'AFOAuth2Client'
  s.requires_arc = true

  s.dependency 'AFNetworking', '~>2.0'
  s.platform  = :ios, '6.0'

  s.ios.frameworks = 'Security'

  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
  #import <Security/Security.h>
#endif /* __OBJC__*/
EOS
end

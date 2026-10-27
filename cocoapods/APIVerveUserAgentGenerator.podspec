Pod::Spec.new do |s|
  s.name             = 'APIVerveUserAgentGenerator'
  s.version          = '1.2.3'
  s.summary          = 'User Agent Generator creates realistic user agent strings for desktop, mobile, and tablet devices.'
  s.description      = <<-'DESC'
User Agent Generator creates realistic user agent strings for desktop, mobile, and tablet devices. Each request outputs the complete string with parsed browser and operating system names and versions, while paid plans add engine and CPU details.

This iOS/macOS SDK provides a convenient way to access the User Agent Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/useragentgenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/useragentgenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveUserAgentGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

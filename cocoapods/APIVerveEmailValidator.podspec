Pod::Spec.new do |s|
  s.name             = 'APIVerveEmailValidator'
  s.version          = '1.2.3'
  s.summary          = 'Email Validator is an email validation API that checks whether an address is well-formed, whether its domain can receive mail, and...'
  s.description      = <<-'DESC'
Email Validator is an email validation API that checks whether an address is well-formed, whether its domain can receive mail, and whether it is safe to accept. It validates the format, resolves MX records (including null MX and the A-record fallback), checks for SPF and DMARC, flags disposable, role and free-provider addresses, and returns a normalized address for spotting duplicates. Paid plans add a risk score and typo correction.

This iOS/macOS SDK provides a convenient way to access the Email Validator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/emailvalidator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/emailvalidator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveEmailValidator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_emailvalidator"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Email Validator API - Ruby Client"
  spec.description   = "Email Validator is an email validation API that checks whether an address is well-formed, whether its domain can receive mail, and whether it is safe to accept. It validates the format, resolves MX records (including null MX and the A-record fallback), checks for SPF and DMARC, flags disposable, role and free-provider addresses, and returns a normalized address for spotting duplicates. Paid plans add a risk score and typo correction."
  spec.homepage      = "https://apiverve.com/marketplace/emailvalidator?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/emailvalidator-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/emailvalidator"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end

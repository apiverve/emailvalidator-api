# Email Validator API - Ruby Gem

Email Validator checks whether an email address is valid, deliverable and safe. It validates the format, resolves the domain's mail (MX) records, flags disposable and role-based addresses, and returns a composite risk score with typo correction.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_emailvalidator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_emailvalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_emailvalidator'

# Initialize the client
client = APIVerve::Emailvalidator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ email: "support@myspace.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ email: "support@myspace.com" })
  puts response["data"]
rescue APIVerve::Emailvalidator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Emailvalidator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Emailvalidator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "email": "support@myspace.com",
    "domain": "myspace.com",
    "username": "support",
    "isRegexValid": true,
    "hasTypo": false,
    "isMxValid": true,
    "isValid": true,
    "isFreeEmail": false,
    "isCompanyEmail": true,
    "isDisposable": false,
    "isRoleAccount": true,
    "suggestedCorrection": null,
    "riskScore": 10,
    "riskLevel": "low"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/emailvalidator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/emailvalidator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/emailvalidator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

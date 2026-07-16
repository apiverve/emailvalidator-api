# Email Validator API - PHP Package

Email Validator checks whether an email address is valid, deliverable and safe. It validates the format, resolves the domain's mail (MX) records, flags disposable and role-based addresses, and returns a composite risk score with typo correction.

## Installation

Install via Composer:

```bash
composer require apiverve/emailvalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Emailvalidator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['email' => 'support@myspace.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Emailvalidator\Client;
use APIVerve\Emailvalidator\Exceptions\APIException;
use APIVerve\Emailvalidator\Exceptions\ValidationException;

try {
    $response = $client->execute(['email' => 'support@myspace.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/emailvalidator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://emailvalidator.apiverve.com?utm_source=php&utm_medium=readme](https://emailvalidator.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

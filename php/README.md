# Email Validator API - PHP Package

Email Validator is an email validation API that checks whether an address is well-formed, whether its domain can receive mail, and whether it is safe to accept. It validates the format, resolves MX records (including null MX and the A-record fallback), checks for SPF and DMARC, flags disposable, role and free-provider addresses, and returns a normalized address for spotting duplicates. Paid plans add a risk score and typo correction.

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
    "mxRecord": "mxa-00ac0e01.gslb.pphosted.com",
    "isNullMx": false,
    "canReceiveMail": true,
    "hasSpf": true,
    "hasDmarc": true,
    "isSubaddressed": false,
    "normalizedEmail": "support@myspace.com",
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

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/emailvalidator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/emailvalidator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/emailvalidator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

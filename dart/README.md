# Email Validator API - Dart/Flutter Client

Email Validator is a simple tool for validating if an email address is valid or not. It checks the email address format and the domain records to see if the email address is valid.

[![pub package](https://img.shields.io/pub/v/apiverve_emailvalidator.svg)](https://pub.dev/packages/apiverve_emailvalidator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Email Validator API](https://emailvalidator.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_emailvalidator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_emailvalidator/apiverve_emailvalidator.dart';

void main() async {
  final client = EmailvalidatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'email': 'support@myspace.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "creationDate": null,
    "domain": "myspace.com",
    "email": "support@myspace.com",
    "username": "support",
    "canConnect": true,
    "hasTypo": false,
    "isValid": true,
    "isMxValid": true,
    "isSmtpValid": true,
    "isRegexValid": true,
    "smtp": {
      "valid": true,
      "reason": "Connected"
    },
    "isCompanyEmail": true,
    "isFreeEmail": false,
    "checksum": 797
  }
}
```

## API Reference

- **API Home:** [Email Validator API](https://emailvalidator.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/emailvalidator](https://docs.apiverve.com/ref/emailvalidator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)

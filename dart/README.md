# Email Validator API - Dart/Flutter Client

Email Validator is an email validation API that checks whether an address is well-formed, whether its domain can receive mail, and whether it is safe to accept. It validates the format, resolves MX records (including null MX and the A-record fallback), checks for SPF and DMARC, flags disposable, role and free-provider addresses, and returns a normalized address for spotting duplicates. Paid plans add a risk score and typo correction.

[![pub package](https://img.shields.io/pub/v/apiverve_emailvalidator.svg)](https://pub.dev/packages/apiverve_emailvalidator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Email Validator API](https://apiverve.com/marketplace/emailvalidator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_emailvalidator: ^1.2.5
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
    "mailProvider": "Proofpoint",
    "isSecurityGateway": true,
    "riskScore": 10,
    "riskLevel": "low"
  }
}
```

## API Reference

- **API Home:** [Email Validator API](https://apiverve.com/marketplace/emailvalidator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/emailvalidator](https://docs.apiverve.com/ref/emailvalidator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

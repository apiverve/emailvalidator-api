/// Email Validator API client for Dart/Flutter
///
/// Email Validator is an email validation API that checks whether an address is well-formed, whether its domain can receive mail, and whether it is safe to accept. It validates the format, resolves MX records (including null MX and the A-record fallback), checks for SPF and DMARC, flags disposable, role and free-provider addresses, and returns a normalized address for spotting duplicates. Paid plans add a risk score and typo correction.
///
/// For more information, visit: https://apiverve.com/marketplace/emailvalidator?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_emailvalidator;

export 'src/client.dart';
export 'src/models.dart';

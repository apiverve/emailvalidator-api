/// Response models for the Email Validator API.

/// API Response wrapper.
class EmailvalidatorResponse {
  final String status;
  final dynamic error;
  final EmailvalidatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  EmailvalidatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory EmailvalidatorResponse.fromJson(Map<String, dynamic> json) => EmailvalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? EmailvalidatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Email Validator API.

class EmailvalidatorData {
  String? email;
  String? domain;
  String? username;
  bool? isRegexValid;
  bool? hasTypo;
  bool? isMxValid;
  bool? isValid;
  bool? isFreeEmail;
  bool? isCompanyEmail;
  bool? isDisposable;
  bool? isRoleAccount;
  String? mxRecord;
  bool? isNullMx;
  bool? canReceiveMail;
  bool? hasSpf;
  bool? hasDmarc;
  bool? isSubaddressed;
  String? normalizedEmail;
  dynamic suggestedCorrection;
  String? mailProvider;
  bool? isSecurityGateway;
  num? riskScore;
  String? riskLevel;

  EmailvalidatorData({
    this.email,
    this.domain,
    this.username,
    this.isRegexValid,
    this.hasTypo,
    this.isMxValid,
    this.isValid,
    this.isFreeEmail,
    this.isCompanyEmail,
    this.isDisposable,
    this.isRoleAccount,
    this.mxRecord,
    this.isNullMx,
    this.canReceiveMail,
    this.hasSpf,
    this.hasDmarc,
    this.isSubaddressed,
    this.normalizedEmail,
    this.suggestedCorrection,
    this.mailProvider,
    this.isSecurityGateway,
    this.riskScore,
    this.riskLevel,
  });

  factory EmailvalidatorData.fromJson(Map<String, dynamic> json) => EmailvalidatorData(
      email: json['email'],
      domain: json['domain'],
      username: json['username'],
      isRegexValid: json['isRegexValid'],
      hasTypo: json['hasTypo'],
      isMxValid: json['isMxValid'],
      isValid: json['isValid'],
      isFreeEmail: json['isFreeEmail'],
      isCompanyEmail: json['isCompanyEmail'],
      isDisposable: json['isDisposable'],
      isRoleAccount: json['isRoleAccount'],
      mxRecord: json['mxRecord'],
      isNullMx: json['isNullMx'],
      canReceiveMail: json['canReceiveMail'],
      hasSpf: json['hasSpf'],
      hasDmarc: json['hasDmarc'],
      isSubaddressed: json['isSubaddressed'],
      normalizedEmail: json['normalizedEmail'],
      suggestedCorrection: json['suggestedCorrection'],
      mailProvider: json['mailProvider'],
      isSecurityGateway: json['isSecurityGateway'],
      riskScore: json['riskScore'],
      riskLevel: json['riskLevel'],
    );
}

class EmailvalidatorRequest {
  String email;

  EmailvalidatorRequest({
    required this.email,
  });

  Map<String, dynamic> toJson() => {
      'email': email,
    };
}

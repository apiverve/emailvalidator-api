/// Response models for the Email Validator API.

/// API Response wrapper.
class EmailvalidatorResponse {
  final String status;
  final dynamic error;
  final EmailvalidatorData? data;

  EmailvalidatorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory EmailvalidatorResponse.fromJson(Map<String, dynamic> json) => EmailvalidatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? EmailvalidatorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Email Validator API.

class EmailvalidatorData {
  dynamic creationDate;
  String? domain;
  String? email;
  String? username;
  bool? canConnect;
  bool? hasTypo;
  bool? isValid;
  bool? isMxValid;
  bool? isSmtpValid;
  bool? isRegexValid;
  EmailvalidatorDataSmtp? smtp;
  bool? isCompanyEmail;
  bool? isFreeEmail;
  int? checksum;

  EmailvalidatorData({
    this.creationDate,
    this.domain,
    this.email,
    this.username,
    this.canConnect,
    this.hasTypo,
    this.isValid,
    this.isMxValid,
    this.isSmtpValid,
    this.isRegexValid,
    this.smtp,
    this.isCompanyEmail,
    this.isFreeEmail,
    this.checksum,
  });

  factory EmailvalidatorData.fromJson(Map<String, dynamic> json) => EmailvalidatorData(
      creationDate: json['creationDate'],
      domain: json['domain'],
      email: json['email'],
      username: json['username'],
      canConnect: json['canConnect'],
      hasTypo: json['hasTypo'],
      isValid: json['isValid'],
      isMxValid: json['isMxValid'],
      isSmtpValid: json['isSmtpValid'],
      isRegexValid: json['isRegexValid'],
      smtp: json['smtp'] != null ? EmailvalidatorDataSmtp.fromJson(json['smtp']) : null,
      isCompanyEmail: json['isCompanyEmail'],
      isFreeEmail: json['isFreeEmail'],
      checksum: json['checksum'],
    );
}

class EmailvalidatorDataSmtp {
  bool? valid;
  String? reason;

  EmailvalidatorDataSmtp({
    this.valid,
    this.reason,
  });

  factory EmailvalidatorDataSmtp.fromJson(Map<String, dynamic> json) => EmailvalidatorDataSmtp(
      valid: json['valid'],
      reason: json['reason'],
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

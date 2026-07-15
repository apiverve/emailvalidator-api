declare module '@apiverve/emailvalidator' {
  export interface emailvalidatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface emailvalidatorResponse {
    status: string;
    error: string | null;
    data: EmailValidatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface EmailValidatorData {
      email:               null | string;
      domain:              null | string;
      username:            null | string;
      isRegexValid:        boolean | null;
      hasTypo:             boolean | null;
      isMXValid:           boolean | null;
      isValid:             boolean | null;
      isFreeEmail:         boolean | null;
      isCompanyEmail:      boolean | null;
      isDisposable:        boolean | null;
      isRoleAccount:       boolean | null;
      suggestedCorrection: null;
      riskScore:           number | null;
      riskLevel:           null | string;
  }

  export default class emailvalidatorWrapper {
    constructor(options: emailvalidatorOptions);

    execute(callback: (error: any, data: emailvalidatorResponse | null) => void): Promise<emailvalidatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: emailvalidatorResponse | null) => void): Promise<emailvalidatorResponse>;
    execute(query?: Record<string, any>): Promise<emailvalidatorResponse>;
  }
}

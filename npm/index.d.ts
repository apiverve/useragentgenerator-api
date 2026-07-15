declare module '@apiverve/useragentgenerator' {
  export interface useragentgeneratorOptions {
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

  export interface useragentgeneratorResponse {
    status: string;
    error: string | null;
    data: UserAgentGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface UserAgentGeneratorData {
      ua:      null | string;
      browser: Browser;
      engine:  Engine;
      os:      Engine;
      device:  CPU;
      cpu:     CPU;
  }
  
  interface Browser {
      name:    null | string;
      version: null | string;
      major:   null | string;
  }
  
  interface CPU {
  }
  
  interface Engine {
      name:    null | string;
      version: null | string;
  }

  export default class useragentgeneratorWrapper {
    constructor(options: useragentgeneratorOptions);

    execute(callback: (error: any, data: useragentgeneratorResponse | null) => void): Promise<useragentgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: useragentgeneratorResponse | null) => void): Promise<useragentgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<useragentgeneratorResponse>;
  }
}

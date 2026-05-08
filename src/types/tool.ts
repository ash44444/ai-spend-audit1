export interface ToolPlan {

  name: string;

  monthlyPrice: number | null;

  yearlyPrice?: number | null;

  billingType:
    | "free"
    | "subscription"
    | "custom"
    | "usage_based";

  seatBased: boolean;

  enterprise: boolean;

  official: boolean;

  features: string[];
}

export interface OfficialAITool {

  toolName: string;

  vendor: string;

  category: string;

  officialPricingUrl: string;

  verifiedDate: string;

  pricingSource: "official_website";

  pricingModel: string;

  supportsApi: boolean;

  currency: string;

  plans: ToolPlan[];
}
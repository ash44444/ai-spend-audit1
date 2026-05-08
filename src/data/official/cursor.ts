import { OfficialAITool }
from "@/types/tool";

export const cursorData: OfficialAITool = {

  toolName: "Cursor",

  vendor: "Cursor",

  category: "AI Coding Assistant",

  officialPricingUrl:
    "https://cursor.com/pricing",

  verifiedDate: "2026-05-08",

  pricingSource: "official_website",

  pricingModel: "seat_based",

  supportsApi: false,

  currency: "USD",

  plans: [

    {
      name: "Hobby",

      monthlyPrice: 0,

      yearlyPrice: 0,

      billingType: "free",

      seatBased: false,

      enterprise: false,

      official: true,

      features: [
        "tab_completion",
        "basic_chat",
      ],
    },

    {
      name: "Pro",

      monthlyPrice: 20,

      yearlyPrice: 192,

      billingType: "subscription",

      seatBased: true,

      enterprise: false,

      official: true,

      features: [
        "advanced_completion",
        "chat",
        "multi_file_editing",
      ],
    },

    {
      name: "Business",

      monthlyPrice: 40,

      yearlyPrice: null,

      billingType: "subscription",

      seatBased: true,

      enterprise: false,

      official: true,

      features: [
        "team_management",
        "centralized_billing",
      ],
    },

    {
      name: "Enterprise",

      monthlyPrice: null,

      yearlyPrice: null,

      billingType: "custom",

      seatBased: true,

      enterprise: true,

      official: true,

      features: [
        "sso",
        "enterprise_security",
      ],
    },
  ],
};
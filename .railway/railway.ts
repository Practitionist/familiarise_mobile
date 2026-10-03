/**
 * Railway Infrastructure-as-Code (IaC) Configuration for Familiarise Mobile Backend
 * Replaces deprecated static `railway.json` (sunset December 1, 2026).
 */
export interface RailwayServiceConfig {
  service: string;
  build: {
    builder: "DOCKERFILE";
    dockerfilePath: string;
    watchPatterns: string[];
  };
  deploy: {
    startCommand: string;
    healthcheckPath: string;
    healthcheckTimeout: number;
    restartPolicyType: "ON_FAILURE" | "ALWAYS" | "NEVER";
    restartPolicyMaxRetries: number;
    numReplicas: number;
  };
}

export const railwayConfig: RailwayServiceConfig = {
  service: "familiarise-mobile-backend",
  build: {
    builder: "DOCKERFILE",
    dockerfilePath: "backend/Dockerfile",
    watchPatterns: ["backend/**"],
  },
  deploy: {
    startCommand: "/app/bin/server",
    healthcheckPath: "/api/health",
    healthcheckTimeout: 60,
    restartPolicyType: "ON_FAILURE",
    restartPolicyMaxRetries: 5,
    numReplicas: 2,
  },
};

export default railwayConfig;

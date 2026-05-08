-- CreateEnum
CREATE TYPE "UseCase" AS ENUM ('coding', 'writing', 'research', 'data', 'mixed');

-- CreateEnum
CREATE TYPE "AuditStatus" AS ENUM ('completed', 'processing', 'failed');

-- CreateTable
CREATE TABLE "Audit" (
    "id" TEXT NOT NULL,
    "publicId" TEXT NOT NULL,
    "teamSize" INTEGER NOT NULL,
    "useCase" "UseCase" NOT NULL,
    "monthlySavings" DECIMAL(10,2) NOT NULL,
    "annualSavings" DECIMAL(10,2) NOT NULL,
    "status" "AuditStatus" NOT NULL DEFAULT 'completed',
    "summary" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Audit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AuditTool" (
    "id" TEXT NOT NULL,
    "auditId" TEXT NOT NULL,
    "toolName" TEXT NOT NULL,
    "currentPlan" TEXT NOT NULL,
    "currentMonthlySpend" DECIMAL(10,2) NOT NULL,
    "seats" INTEGER NOT NULL,
    "recommendedAction" TEXT NOT NULL,
    "recommendedPlan" TEXT,
    "recommendedTool" TEXT,
    "estimatedMonthlySavings" DECIMAL(10,2) NOT NULL,
    "estimatedAnnualSavings" DECIMAL(10,2) NOT NULL,
    "reasoning" TEXT NOT NULL,
    "pricingSourceUrl" TEXT NOT NULL,
    "verifiedDate" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "AuditTool_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Lead" (
    "id" TEXT NOT NULL,
    "auditId" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "companyName" TEXT,
    "role" TEXT,
    "teamSize" INTEGER,
    "wantsConsult" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Lead_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Audit_publicId_key" ON "Audit"("publicId");

-- CreateIndex
CREATE UNIQUE INDEX "Lead_auditId_key" ON "Lead"("auditId");

-- AddForeignKey
ALTER TABLE "AuditTool" ADD CONSTRAINT "AuditTool_auditId_fkey" FOREIGN KEY ("auditId") REFERENCES "Audit"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lead" ADD CONSTRAINT "Lead_auditId_fkey" FOREIGN KEY ("auditId") REFERENCES "Audit"("id") ON DELETE CASCADE ON UPDATE CASCADE;

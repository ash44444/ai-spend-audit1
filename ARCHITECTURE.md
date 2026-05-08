---

# ARCHITECTURE.md (Day 1 Version)

# Architecture

## Overview

AI Spend Audit is designed as a modern SaaS-style audit platform that analyzes AI tool spending and recommends cost optimizations.

The architecture separates:

1. Official vendor pricing data
2. Audit recommendation logic
3. User-generated audit data
4. AI-generated summaries

This separation improves maintainability, pricing traceability, and audit explainability.

---

# Stack Choice

## Frontend

### Next.js App Router

Chosen because:

- Server Components support
- Excellent SEO
- Easy API routes
- Fast deployment on Vercel
- Good Open Graph support
- Production-ready architecture

## Database

### PostgreSQL + Prisma

Chosen because:

- Strong relational modeling
- Type safety
- Easy migrations
- Clean developer experience

## Styling

### Tailwind CSS

Chosen for:

- rapid iteration
- responsive UI
- small bundle size
- utility-first workflow

---

# Current Folder Structure

```txt
src/
 ├── app/
 ├── components/
 ├── data/
 │    ├── official/
 │    └── auditRules/
 ├── lib/
 ├── types/
 └── tests/
```

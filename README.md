# Billing Platform – QA Testing Portfolio Project

A fresher-level, sample QA portfolio project based on a fictional multi-role billing platform. It demonstrates test planning, functional and role-based testing, billing reconciliation, CSV upload validation, defect documentation, SQL checks, and a starter Playwright example.

> **Important:** This is a self-created practice project for portfolio demonstration. The platform and sample defects/data are fictional. The sample bug reports are illustrative test findings, not defects discovered in a real company's system.

## Project scope

The fictional platform supports:
- Center users, approvers, viewers, center support, billing users and administrators
- Enrollments and weekly reports
- NSF (non-sufficient funds) charges, waivers, adjustments and billing summaries
- CSV bulk imports with preview and confirmation
- Role-based dashboards, filters, sorting and pagination
- Calendar dates and notifications

## Repository contents

| Path | Purpose |
|---|---|
| `docs/test-plan.md` | Scope, approach, environment, entry/exit criteria |
| `docs/test-scenarios.md` | High-level functional and negative scenarios |
| `test-cases/test-cases.csv` | Detailed test cases with expected results |
| `test-data/enrollments_valid.csv` | Valid import sample |
| `test-data/enrollments_invalid.csv` | Invalid/duplicate import sample |
| `bug-reports/sample-bug-reports.md` | Example defect reports (illustrative) |
| `sql/billing-validation.sql` | Example SQL checks against an assumed schema |
| `automation/playwright/` | Starter Playwright UI test and setup |
| `docs/test-summary-template.md` | Template for recording actual execution results |

## How to use this project

1. Read the test plan and scenarios.
2. Review the test cases and map each one to a requirement.
3. Use the CSV files to practise valid, invalid, duplicate and boundary upload testing.
4. Adapt the SQL examples to a local practice database with the documented sample schema.
5. Run the Playwright starter against a test page you control, then extend it.
6. Update the execution summary only after you have actually run the tests.

## Tools and concepts represented

- Manual functional, negative, regression and exploratory testing
- Equivalence partitioning and boundary value analysis
- Role-based access control (RBAC)
- CSV validation and data integrity
- SQL SELECT, JOIN, GROUP BY and HAVING
- Defect reporting with steps, expected/actual results and severity
- Playwright with JavaScript

## Honest resume wording

After reviewing the repository, you may list it as:

**Billing Platform – QA Testing Portfolio Project (Self-directed)**
- Prepared a structured test plan, scenarios and detailed test cases for a sample billing workflow.
- Designed positive, negative, role-permission and CSV-import validation checks.
- Drafted SQL queries to reconcile billing totals and identify duplicate or inconsistent records.
- Created sample defect reports and a starter Playwright test.

Only add claims such as “executed”, “automated”, “validated” or measured test counts after you have personally run and verified that work.

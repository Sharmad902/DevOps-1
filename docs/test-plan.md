# Test Plan – Sample Billing Platform

## 1. Objective
Define a practical manual and automation testing approach for a fictional billing platform. The goal is to check business workflows, access permissions, numerical accuracy, imports and regression risk.

## 2. Scope
**In scope:** login and session basics; role-based navigation and actions; enrollment and weekly-report records; NSF charges, waivers and adjustments; billing summaries; CSV import preview/confirmation; duplicate and malformed rows; filters, sorting and pagination; date display; notifications; desktop/mobile and light/dark layout checks.

**Out of scope:** production integrations, real payment processing, penetration testing, load testing and any real customer data.

## 3. Test approach
- Functional testing: verify each workflow against stated expected behaviour.
- Negative testing: invalid values, missing fields, duplicate rows and unauthorized actions.
- Boundary testing: empty files, maximum supported rows, date boundaries and numeric limits (limits must be confirmed by product requirements).
- Role-based testing: compare what each role can view and change.
- Data reconciliation: compare totals shown in UI with expected calculations / database query results.
- Regression testing: repeat critical checks after changes.
- Exploratory testing: investigate unusual sequences and combinations.

## 4. Test environment and data
Use a non-production test environment with fictional accounts and records only. Record browser, OS, build/version, role and test data for each run. The actual URL, supported browsers, file-size limits and business rules must be supplied by the application owner.

## 5. Entry criteria
- Test build and environment are available.
- Requirements and role permissions are documented.
- Test accounts and safe sample data are available.
- Critical workflows are sufficiently understood.

## 6. Exit criteria
- Planned tests have an execution status.
- Critical/high defects are reported and triaged.
- Failed and blocked cases are explained.
- Regression results and known risks are documented.
- No test is marked Pass without evidence.

## 7. Defect severity guide
- Critical: data exposure, unauthorized financial change, or widespread loss/corruption of billing data.
- High: major billing calculation or workflow failure with no reasonable workaround.
- Medium: important feature failure with a workaround.
- Low: minor visual, wording or low-impact usability issue.

Severity and priority should be assigned using the team's process.

## 8. Deliverables
Test plan, scenarios, detailed test cases, test data, defect reports, SQL examples, automation starter and execution summary.

## 9. Assumptions and open questions
All rules in this portfolio are illustrative. Confirm required roles, charge formulas, rounding rules, timezone policy, CSV schema, maximum upload size/row count, retry behaviour and audit requirements before testing a real system.

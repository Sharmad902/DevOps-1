# Test Scenarios – Sample Billing Platform

These are high-level scenarios for a fictional application. Confirm actual business rules before execution.

## A. Authentication and roles
1. Verify valid and invalid login.
2. Verify deactivated user cannot log in.
3. Verify each role sees only permitted menus and records.
4. Verify viewer cannot create, edit, approve or delete records.
5. Verify a user assigned to one center cannot access another center by changing a URL or filter.
6. Verify dual-role user permissions and active role selection.
7. Verify session expiry and logout.

## B. Enrollments and weekly reports
8. Create, edit and view an enrollment with valid data.
9. Reject missing mandatory fields and invalid formats.
10. Verify weekly report count for a selected center and date range.
11. Verify counts remain consistent across dashboard, detail screen and export.
12. Verify duplicate enrollment handling.

## C. Billing, NSF and adjustments
13. Verify billing summary calculation using known sample values.
14. Verify NSF charge appears once for the relevant event.
15. Verify waiver reduces the amount according to the documented rule.
16. Verify adjustment is reflected in the correct period and audit history.
17. Verify negative, zero and unusually large amounts are handled according to requirements.
18. Verify totals match between UI, export and database.

## D. CSV bulk import
19. Upload a valid CSV and review preview before confirmation.
20. Upload an empty file, wrong extension and malformed CSV.
21. Upload file with missing headers or extra columns.
22. Upload rows with missing required values or invalid dates/numbers.
23. Upload duplicate rows within the file and duplicates already in the system.
24. Verify partial failure summary identifies accepted and rejected rows.
25. Re-upload the same file and verify duplicate protection / idempotency behaviour.
26. Verify cancellation before final confirmation leaves no records created.

## E. Background jobs and notifications
27. Verify successful import job reaches a completed state.
28. Verify failed job shows a useful error and can be retried according to policy.
29. Verify retry does not create duplicate records.
30. Verify notification is sent once and links to the correct record.

## F. Search, filters and calendar
31. Combine entity, state and center filters.
32. Verify filters are reflected in URL and survive refresh if specified.
33. Verify sorting is correct across pages.
34. Verify pagination does not repeat or omit records.
35. Verify calendar dates are consistent across supported time zones.

## G. Compatibility and regression
36. Verify desktop and mobile layouts.
37. Verify light and dark themes.
38. Verify keyboard navigation and visible focus.
39. Run critical regression tests after a release.

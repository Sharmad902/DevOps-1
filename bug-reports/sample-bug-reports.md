# Sample Bug Reports (Illustrative Only)

**Important:** These are hypothetical examples to demonstrate defect-report writing. They are not confirmed defects in a real product. Replace them with actual observations, screenshots and environment details after execution.

## BUG-001 – Viewer role can access an edit action
- **Module:** Role-based access control
- **Environment:** To be recorded during execution
- **Severity/Priority:** High / High (provisional)
- **Preconditions:** A viewer account and an existing test record are available.
- **Steps:** 1. Sign in as Viewer. 2. Open a record. 3. Inspect available actions. 4. Attempt edit through the UI and, in an authorized test environment, verify the server response.
- **Expected:** Viewer is read-only; unauthorized update is denied by the server.
- **Actual:** To be filled only if observed. Example hypothetical result: edit action is visible and an update is accepted.
- **Evidence:** Attach screenshot and sanitized request/response only after reproducing.
- **Status:** Example – Not executed.

## BUG-002 – Billing summary differs from exported total
- **Module:** Billing summary / export
- **Severity/Priority:** High / High (provisional)
- **Preconditions:** Known test transactions and a matching date/center filter.
- **Steps:** 1. Open summary. 2. Record displayed total. 3. Export same filtered records. 4. Calculate export total independently.
- **Expected:** UI and export totals reconcile under the approved billing formula.
- **Actual:** To be filled only if a difference is observed; record exact values and filter criteria.
- **Evidence:** Sanitized export, calculation and screenshot.
- **Status:** Example – Not executed.

## BUG-003 – Re-upload creates duplicate enrollment records
- **Module:** CSV import
- **Severity/Priority:** High / High (provisional)
- **Preconditions:** A CSV file with a stable unique enrollment identifier.
- **Steps:** 1. Import and confirm the file. 2. Wait for completion. 3. Upload the same file again. 4. Compare record counts and identifiers.
- **Expected:** Re-upload follows documented duplicate/idempotency policy and does not silently create unintended duplicates.
- **Actual:** To be filled only if observed; include before/after counts.
- **Evidence:** Import job IDs and sanitized record identifiers.
- **Status:** Example – Not executed.

## Defect reporting checklist
Include a unique title, environment/build, preconditions, numbered reproducible steps, expected result, actual result, severity, priority, evidence and status. Never report an expected-risk scenario as a confirmed bug without reproducing it.

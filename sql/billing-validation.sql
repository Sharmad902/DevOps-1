-- Sample SQL validation queries for a fictional billing schema.
-- Adapt table/column names to the actual schema before running.
-- Read-only examples: use a test database and never query production data without authorization.

-- Assumed tables:
-- invoices(invoice_id, center_id, invoice_date, subtotal, nsf_charge, waiver_amount, adjustment_amount, total_amount, status)
-- invoice_lines(line_id, invoice_id, line_amount)
-- enrollments(enrollment_id, center_id, student_id, start_date, status)

-- 1. Inspect recent invoices
SELECT invoice_id, center_id, invoice_date, subtotal, nsf_charge,
       waiver_amount, adjustment_amount, total_amount, status
FROM invoices
ORDER BY invoice_date DESC
LIMIT 20;

-- 2. Find invoices where stored total differs from the assumed formula.
-- Confirm sign conventions and rounding rules with requirements first.
SELECT invoice_id, subtotal, nsf_charge, waiver_amount,
       adjustment_amount, total_amount,
       (subtotal + nsf_charge - waiver_amount + adjustment_amount) AS expected_total
FROM invoices
WHERE ROUND(total_amount::numeric, 2) <>
      ROUND((subtotal + nsf_charge - waiver_amount + adjustment_amount)::numeric, 2);

-- 3. Find duplicate enrollment identifiers
SELECT enrollment_id, COUNT(*) AS record_count
FROM enrollments
GROUP BY enrollment_id
HAVING COUNT(*) > 1;

-- 4. Reconcile invoice totals by center
SELECT center_id,
       COUNT(*) AS invoice_count,
       SUM(total_amount) AS total_billed
FROM invoices
WHERE status <> 'VOID'
GROUP BY center_id
ORDER BY center_id;

-- 5. Compare invoice header total with sum of invoice lines
SELECT i.invoice_id, i.subtotal,
       COALESCE(SUM(l.line_amount), 0) AS line_total
FROM invoices i
LEFT JOIN invoice_lines l ON l.invoice_id = i.invoice_id
GROUP BY i.invoice_id, i.subtotal
HAVING ROUND(i.subtotal::numeric, 2) <>
       ROUND(COALESCE(SUM(l.line_amount), 0)::numeric, 2);

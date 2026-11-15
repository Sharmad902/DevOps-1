const { test, expect } = require('@playwright/test');

// Starter example only. Replace selectors and route with your own authorized test app.
// Do not place real passwords or production credentials in source control.
test('login form shows validation for empty submission', async ({ page }) => {
  await page.goto('/login');

  await page.getByRole('button', { name: /sign in|log in/i }).click();

  // Adapt this assertion to the validation message used by your practice application.
  await expect(page.getByText(/required|enter your email|enter your password/i).first())
    .toBeVisible();
});

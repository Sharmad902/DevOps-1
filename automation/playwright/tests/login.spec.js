const { test, expect } = require('@playwright/test');

test('login form shows validation for empty submission', async ({ page }) => {
  await page.goto('/login');

  await page.getByRole('button', { name: /sign in|log in/i }).click();

  await expect(page.getByText(/required|enter your email|enter your password/i).first())
    .toBeVisible();
});

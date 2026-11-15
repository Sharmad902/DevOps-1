# Playwright starter

This is a starter UI automation example, not a completed integration against the employer's private platform.

## Run against an application you own or are authorized to test

1. Install Node.js.
2. In this folder run `npm install`.
3. Run `npx playwright install`.
4. Start your local practice application on port 3000, or set `BASE_URL` to your authorized test URL.
5. Run `npm test`.

The sample expects a `/login` page with a Sign in / Log in button and a required-field validation message. Update selectors and assertions to match your practice application. Never test a real employer system without written authorization.

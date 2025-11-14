# Frontend Login Page (Vue 3 + Vite)

A clean, responsive, client-side login page built with Vue 3 and Vite. This project demonstrates professional form validation, component structure, and a user-focused UX for a frontend assignment.

---

## Key Features

- Fully client-side login flow (no backend required)
- Advanced, real-time form validation
- Password requirement checklist with live feedback
- Show/Hide password toggle
- "Remember me" using localStorage
- Simulated lockout after 5 failed attempts (UX/security simulation)
- Responsive, accessible UI with separated CSS files


## Demo Credentials

Use these locally to test the login flow (hardcoded demo users):

| Email              | Password   |
|-------------------:|:----------|
| test@example.com   | Test@1234 |
| admin@example.com  | Admin@2024|

## How to Run Locally

1. Install dependencies

```bash
npm install
```

2. Start the development server

```bash
npm run dev
```

3. Open the app

Visit the URL shown in the terminal (typically `http://localhost:5173`).

## Build for Production

```bash
npm run build
```

The production output will be generated in `/dist`.

## Validation Details

### Email

- Required (must not be empty)
- Real-time format validation (on blur)
- Format regex: `^[^\s@]+@[^\s@]+\.[^\s@]+$`

### Password

- Length: 8-16 characters
- At least one uppercase letter
- At least one lowercase letter
- At least one number
- At least one special symbol
- A live checklist appears while the password is invalid and updates as the user types

Validation logic is isolated in `src/utils/validation.js` and returns both a `valid` boolean and a `criteria` object used by the live checklist.

## UX & Accessibility

- Live feedback and clear error messaging
- Auto-clear validation hints while typing
- Keyboard accessible inputs and buttons
- Smooth transitions and professional spacing/shadows

## Project Structure

```
src/
  main.js
  App.vue
  utils/
    validation.js
  components/
    LoginPage.vue
    Welcome.vue
  styles/
    main.css
    login.css
    welcome.css
```

## Tech Stack

- Vue 3 (Composition API + `<script setup>`)
- Vite (dev server & build)
- CSS3 (component-level and global styles)
- LocalStorage for "Remember me"
- HTML5 & modern JavaScript (ES2022)


## Security Simulation

This is a frontend-only demo but includes simulated security behavior for UX purposes:

- Tracks failed login attempts
- Locks the login after 5 incorrect attempts and shows a "Login locked" UI
- Disables the login button while locked; unlocking is simulated by refreshing the page

## Code Quality & Best Practices

- Validation logic is isolated in `src/utils/`
- Reusable Composition API patterns
- No inline styles; component-level CSS
- Well-commented JavaScript and semantic HTML
- Keyboard accessible and clear error hierarchy

## License

MIT - free to modify, reuse, and build on.

---

If you have questions or need help extending this demo, feel free to open an issue or reach out.

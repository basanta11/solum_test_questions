// Basic email format validator
export function validateEmailFormat(email) {
  const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return regex.test(email);
}

// Password rules:
// - 8-16 characters
// - at least one uppercase
// - at least one lowercase
// - at least one number
// - at least one symbol
export function validatePassword(password) {
  const criteria = {
    length: password.length >= 8 && password.length <= 16,
    upper: /[A-Z]/.test(password),
    lower: /[a-z]/.test(password),
    number: /[0-9]/.test(password),
    symbol: /[^A-Za-z0-9]/.test(password),
  };

  const valid = Object.values(criteria).every(Boolean);

  return { valid, criteria };
}

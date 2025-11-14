<script setup>
//Login form
import { ref, computed, onMounted } from 'vue';
import { validateEmailFormat, validatePassword } from '../utils/validation';
import '../styles/login.css';

// Hardcoded users for this test
const users = [
  { email: 'jhon@gmail.com', password: 'Test@1234' },
  { email: 'test@example.com', password: 'Test@1234' },
  { email: 'admin@example.com', password: 'Admin@2024' },
];

// Form state
const email = ref('');
const password = ref('');
const rememberMe = ref(true);
const showPassword = ref(false);

// Error state
const emailError = ref('');
const passwordError = ref('');
const loginError = ref('');

// Simple lockout logic after repeated failures
const failedAttempts = ref(0);
const isLocked = ref(false);
const MAX_ATTEMPTS = 5;

const emit = defineEmits(['login-success']);

// Load remembered email (if any)
onMounted(() => {
  const saved = localStorage.getItem('rememberedEmail');
  if (saved) {
    email.value = saved;
  }
});

// Live password checklist state
const passwordCriteria = computed(() => {
  return validatePassword(password.value).criteria;
});

const showPasswordChecklist = computed(() => {
  const { valid } = validatePassword(password.value);
  return password.value.length > 0 && !valid;
});

// Email field validation (required + format)
function validateEmailField() {
  emailError.value = '';
  loginError.value = '';

  if (!email.value) {
    emailError.value = 'Email cannot be empty.';
    return false;
  }

  if (!validateEmailFormat(email.value)) {
    emailError.value = 'Please enter a valid email address.';
    return false;
  }

  return true;
}

// Main submit handler
function handleLogin() {
  emailError.value = '';
  passwordError.value = '';
  loginError.value = '';

  if (isLocked.value) {
    loginError.value = 'Too many failed attempts. Please try again later.';
    return;
  }

  if (!validateEmailField()) {
    return;
  }

  const user = users.find((u) => u.email === email.value);
  if (!user) {
    emailError.value = 'Email does not exist.';
    return;
  }

  const { valid } = validatePassword(password.value);
  if (!valid) {
    passwordError.value = 'Password must meet all the requirements below.';
    return;
  }

  if (user.password !== password.value) {
    failedAttempts.value += 1;

    if (failedAttempts.value >= MAX_ATTEMPTS) {
      isLocked.value = true;
      loginError.value =
        'Too many failed attempts. Login temporarily locked.';
    } else {
      loginError.value = 'Incorrect password.';
    }

    return;
  }

  // Successful login
  failedAttempts.value = 0;
  isLocked.value = false;

  if (rememberMe.value) {
    localStorage.setItem('rememberedEmail', email.value);
  } else {
    localStorage.removeItem('rememberedEmail');
  }

  emit('login-success', email.value);
}
</script>

<template>
  <div class="login-container">
    <form class="login-box" @submit.prevent="handleLogin">
      <h2>Login</h2>

      <!-- Email -->
      <label class="field-label" for="email">Email</label>
      <input
        id="email"
        type="email"
        placeholder="Email"
        v-model="email"
        autocomplete="email"
        @blur="validateEmailField"
        @input="emailError = ''"
      />
      <p class="error" v-if="emailError">{{ emailError }}</p>

      <!-- Password -->
      <label class="field-label" for="password">Password</label>
      <div class="password-wrapper">
        <input
          id="password"
          :type="showPassword ? 'text' : 'password'"
          placeholder="Password"
          v-model="password"
          autocomplete="current-password"
        />
        <button
          type="button"
          class="toggle-password"
          @click="showPassword = !showPassword"
        >
          {{ showPassword ? 'Hide' : 'Show' }}
        </button>
      </div>
      <p class="error" v-if="passwordError">{{ passwordError }}</p>

      <!-- Password requirements checklist -->
      <div class="password-requirements" v-if="showPasswordChecklist">
        <p class="requirements-title">Password must:</p>
        <ul>
          <li :class="{ ok: passwordCriteria.length }">
            Be between 8-16 characters
          </li>
          <li :class="{ ok: passwordCriteria.upper }">
            Contain at least one uppercase letter
          </li>
          <li :class="{ ok: passwordCriteria.lower }">
            Contain at least one lowercase letter
          </li>
          <li :class="{ ok: passwordCriteria.number }">
            Contain at least one number
          </li>
          <li :class="{ ok: passwordCriteria.symbol }">
            Contain at least one symbol
          </li>
        </ul>
      </div>

      <!-- Generic login error -->
      <p class="error" v-if="loginError">{{ loginError }}</p>

      <!-- Remember me + forgot password -->
      <div class="remember-row">
        <label>
          <input type="checkbox" v-model="rememberMe" />
          Remember me
        </label>
        <a href="#" class="forgot">Forgot password?</a>
      </div>

      <!-- Submit -->
      <button type="submit" :disabled="isLocked">
        {{ isLocked ? 'Locked' : 'Login' }}
      </button>
    </form>
  </div>
</template>

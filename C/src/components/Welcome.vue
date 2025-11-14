<script setup>
//  welcome screen shown after a successful login

import '../styles/welcome.css';

// Email passed from the parent after login
const props = defineProps({
  email: {
    type: String,
    required: true,
  },
});

// Parent listens for this event to return to the login page
const emit = defineEmits(['logout']);
</script>

<template>
  <div class="welcome-box">
    <h1>Welcome, {{ email }}!</h1>
    <p class="welcome-subtitle">
      You have successfully logged in.
    </p>

    <!-- Logout triggers parent to show login screen again -->
    <button @click="emit('logout')">Logout</button>
  </div>
</template>

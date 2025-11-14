<script setup>
// Root component: switches between login form and welcome screen

import { ref } from 'vue';
import LoginPage from './components/LoginPage.vue';
import Welcome from './components/Welcome.vue';

// Holds the email of the logged-in user; null means "not logged in"
const loggedInEmail = ref(null);

function handleLoginSuccess(email) {
  loggedInEmail.value = email;
}

function handleLogout() {
  loggedInEmail.value = null;
}
</script>

<template>
  <div class="app-root">
    <!-- Show welcome screen once login succeeds -->
    <Welcome
      v-if="loggedInEmail"
      :email="loggedInEmail"
      @logout="handleLogout"
    />

    <!-- Default view: login page -->
    <LoginPage
      v-else
      @login-success="handleLoginSuccess"
    />
  </div>
</template>

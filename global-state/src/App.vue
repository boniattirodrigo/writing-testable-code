<template>
  <div id="app">
    <UsersList />
  </div>
</template>

<script>
import UsersList from './components/UsersList.vue'

export default {
  name: 'app',
  components: {
    UsersList
  }
}
</script>

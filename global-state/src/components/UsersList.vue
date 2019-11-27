<template>
  <div class="container">
    <ul v-for="user in $store.state.users" v-bind:key="user" data-test="users-list">
      <li>{{ user }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'UsersList',
  mounted() {
    this.$store.dispatch('fetchUsers')
  }
}
</script>

<style scoped>
.container {
  text-align: center;
}
</style>

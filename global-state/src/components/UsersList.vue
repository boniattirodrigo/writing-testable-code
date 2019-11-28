<template>
  <div class="container">
    <ul v-for="user in users" v-bind:key="user" data-test="users-list">
      <li>{{ user }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'UsersList',
  props: {
    users: {
      type: Array,
      default: () => []
    },
    fetchUsers: {
      type: Function,
      default: () => {}
    }
  },
  mounted() {
    this.fetchUsers()
  }
}
</script>

<style scoped>
.container {
  text-align: center;
}
</style>

<template>
  <UsersList :users="users" :fetchUsers="fetchUsers" />
</template>

<script>
import { mapActions, mapState } from 'vuex';
import UsersList from './UsersList.vue'

export default {
  name: 'UsersListContainer',
  computed: mapState(['users']),
  methods: mapActions(['fetchUsers']),
  components: {
    UsersList
  }
}
</script>

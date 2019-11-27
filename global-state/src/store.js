import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    users: []
  },
  mutations: {
    addUsers (state, users) {
      state.users = users;
    }
  },
  actions: {
    fetchUsers ({ commit }) {
      fetch('https://swapi.co/api/people/')
        .then((response) => response.json())
        .then(({ results }) => results.map(user => user.name))
        .then(usersName => commit('addUsers', usersName))
    }
  }
})

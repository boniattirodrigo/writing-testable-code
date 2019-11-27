import { shallowMount, createLocalVue } from '@vue/test-utils';
import UsersList from '@/components/UsersList.vue';
import Vuex from 'vuex';

const localVue = createLocalVue();
localVue.use(Vuex);

const actions = {
  fetchUsers: jest.fn()
};

const state = {
  users: [
    'Jim Morrison',
    'Josh Homme',
    'Paul McCartney'
  ]
};

const store = new Vuex.Store({ state, actions });

describe('UsersList.vue', () => {
  const wrapper = shallowMount(UsersList, { store, localVue })

  it('lists 3 users', () => {
    expect(wrapper.findAll('[data-test="users-list"] li')).toHaveLength(3);
  })

  it('renders the first name correctly', () => {
    expect(wrapper.find('[data-test="users-list"] li:first-child').text()).toContain('Jim Morrison');
  })
})

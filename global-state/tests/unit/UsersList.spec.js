import { shallowMount } from '@vue/test-utils';
import UsersList from '@/components/UsersList.vue';

const fetchUsers = jest.fn()

const users = [
  'Jim Morrison',
  'Josh Homme',
  'Paul McCartney'
]

describe('UsersList.vue', () => {
  const wrapper = shallowMount(UsersList, {
    propsData: {
      users,
      fetchUsers
    }
  })

  it('lists 3 users', () => {
    expect(wrapper.findAll('[data-test="users-list"] li')).toHaveLength(3);
  })

  it('renders the first name correctly', () => {
    expect(wrapper.find('[data-test="users-list"] li:first-child').text()).toContain('Jim Morrison');
  })
})

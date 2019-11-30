require 'rails_helper'

describe User do
  context 'when creating a new user' do
    before do
      User.create(name: 'Rodrigo', email: 'email@email.com', age: 23)
    end

    it 'saves the new user' do
      expect(User.count).to be 1
    end
  end
end

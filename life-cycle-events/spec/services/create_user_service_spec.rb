require 'rails_helper'

describe CreateUserService do
  context 'when creating a new user' do
    before do
      CreateUserService.call({ name: 'Rodrigo', email: 'email@email.com', age: 23 })
    end

    it 'saves the new user' do
      expect(User.count).to be 1
    end

    it 'sends welcome email' do
      expect(ActionMailer::Base.deliveries.count).to be(1)
    end
  end
end

class User < ApplicationRecord
  validates :name, :email, :age, presence: true
end

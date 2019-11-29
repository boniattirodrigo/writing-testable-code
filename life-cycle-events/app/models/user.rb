class User < ApplicationRecord
  after_create :send_welcome_email

  validates :name, :email, :age, presence: true

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome_email.deliver_now
  end
end

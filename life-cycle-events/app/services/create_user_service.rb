class CreateUserService
  def self.call(params)
    user = User.new(params)

    if user.save
      UserMailer.with(user: user).welcome_email.deliver_now
    end
  end
end

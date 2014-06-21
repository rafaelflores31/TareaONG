class UserMailer < ActionMailer::Base
  default from: "unitectest123@gmail.com"

  def welcome_email(user)
    mail(to: user.email, subject: 'Subscripcion')
  end

end

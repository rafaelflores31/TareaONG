class MessageMailer < ActionMailer::Base
  default from: "unitectest123@gmail.com"

   def message_email(user)
    mail(to: user.email, subject: 'Mensaje')
  end
end

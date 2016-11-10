class UserMailer < ApplicationMailer
  default from: "joanna.broad93@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
         :to => 'joanna.broad93@gmail.com',
         :subject => "A new contact form message from #{name}")
  end
end

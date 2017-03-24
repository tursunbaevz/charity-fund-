class EmailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_mailer.signup_confirmation.subject
  #
  default from: "charity-fund@example.com"

  def send_message(email)
    @email = email
    mail to: email.email, subject: "Send Message"
  end
end

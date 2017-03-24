class AdminMailer < ApplicationMailer
  default from: "zuma9405@gmail.com"

  def signup_confirmation(admin)
    @admin = admin
    mail to: admin.email, subject: "Sign Up Confirmation"
  end
end
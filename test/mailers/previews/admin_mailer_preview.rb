# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_mailer/signup_confirmation
  def signup_confirmation
  	admin = Admin.last
    AdminMailer.signup_confirmation(admin)
  end

end

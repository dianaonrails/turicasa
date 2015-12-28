# Preview all emails at http://localhost:3000/rails/mailers/owner_mailer
class OwnerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/owner_mailer/reset_password_email
  def reset_password_email
    OwnerMailer.reset_password_email
  end

end

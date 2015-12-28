class OwnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.owner_mailer.reset_password_email.subject
  #
  default from: 'turicasa.pass@gmail.com'
  
  def reset_password_email(owner)
    @owner = Owner.find owner.id
	@url  = edit_password_reset_url(@owner.reset_password_token)
	mail(:to => @owner.email,
	    :subject => "Your password has been reset")
  end
end

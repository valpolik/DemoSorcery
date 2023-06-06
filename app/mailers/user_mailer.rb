class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  # def activation_needed_email
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
  def activation_needed_email(user)
    @user = user
    mail(to: user.email, subject: "Account activation")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  # def activation_success_email
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
  def activation_success_email(user)
    @user = user
    mail(to: user.email, subject: "Your account is now activated")
  end

  def send_unlock_token_email(user)
    @user = user
    mail(to: user.email, subject: "Your account is locked")
  end

  def reset_password_email(user)
    @user = user
    @url  = edit_reset_password_url(@user.reset_password_token)
    mail(to: user.email,
         subject: "Your password has been reset")
  end
end

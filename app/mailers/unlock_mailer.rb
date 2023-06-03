class UnlockMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  # def activation_needed_email
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  # def activation_needed_email(user)
  #   @user = user
  #   mail(to: user.email, subject: "Account activation")
  # end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  # def activation_success_email
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  # def activation_success_email(user)
  #   @user = user
  #   mail(to: user.email, subject: "Your account is now activated")
  # end

  def send_unlock_token_email(user)
    @user = user
    mail(to: user.email, subject: "Your account is locked")
  end
end

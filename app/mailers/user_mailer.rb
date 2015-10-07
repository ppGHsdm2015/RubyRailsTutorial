class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  default from: 'infoserler@gmail.com'
  
  def activation_needed_email(user)
    @user = user
    @url  = "https://my-serler-premila-2.c9.io/users/#{user.activation_token}/activate?id=#{user.id}"
    mail(to: @user.email, subject: "SERLER Account activation")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @user = user
    @url = "https://my-serler-premila-2.c9.io"
    mail(to: @user.email, subject: "Your account is now activated")
  end
end

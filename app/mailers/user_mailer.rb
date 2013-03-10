class UserMailer < ActionMailer::Base
 default :from => "melissaecarroll@gmail.com"
 
  def welcome_email(user)
    @user = user
    @url  = "invitationapp.heroku.com"
    email_with_name = "#{@user.name} <#{@user.email}>"
    mail(:to => email_with_name, :subject => "Welcome to Aarting Invitations!")
  end
end
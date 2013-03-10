class InviteeMailer < ActionMailer::Base
  default :from => "melissaecarroll@gmail.com"
 
  def invitation_to_event(event)
    @title = title
    @date  = date
    @location = location
    mail(:to => email, :subject => "You've been invited!")
  end
end


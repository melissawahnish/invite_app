class InviteeMailer < ActionMailer::Base
  
 
  def invitation_email(event)
   	@event = event
    invitees = "#{@event.invitees}"
    mail(:from => "melissaecarroll@gmail.com", :to => "melissawahnish@gmail.com", 
    	:bcc => invitees, :subject => "You've been invited!")
  end
end


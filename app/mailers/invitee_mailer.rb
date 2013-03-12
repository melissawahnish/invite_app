class InviteeMailer < ActionMailer::Base
  
 
  def invitation_email(event)
   	@event = event
    mail(:from => "melissaecarroll@gmail.com", :to => "melissawahnish@gmail.com", 
    	:bcc => "#{@event.invitees}",
    	:subject => "You've been invited!")
  end
end


class Invitee < ActiveRecord::Base
  attr_accessible :RSVP, :event_id, :is_deleted, :user_id

  belongs_to :user
  belongs_to :event
  
end

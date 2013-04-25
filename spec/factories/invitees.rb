# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invitee do
    user_id ""
    RSVP ""
    event_id ""
    is_deleted false
  end
end

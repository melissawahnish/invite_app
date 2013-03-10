class Event < ActiveRecord::Base
  attr_accessible :date, :image, :location, :title, :invitees

  validates :title, :presence => true
  validates :location, :presence => true
end

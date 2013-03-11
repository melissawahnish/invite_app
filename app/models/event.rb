class Event < ActiveRecord::Base
  attr_accessible :date, :image, :location, :title, :invitees, :description

  validates :title, :presence => true
  validates :location, :presence => true
end

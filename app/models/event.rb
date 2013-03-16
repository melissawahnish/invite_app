class Event < ActiveRecord::Base
  attr_accessible :date, :image, :location, :title, :invitees, :description, :duration

  validates :title, :presence => true
  validates :location, :presence => true

  belongs_to :user
end

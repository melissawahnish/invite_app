class Event < ActiveRecord::Base
  attr_accessible :date, :image, :location, :title, :invitees, :description, :duration

  validates :title, :presence => true
  validates :location, :presence => true
  validates :duration, :numericality => true, :numericality => { :greater_than_or_equal_to => 0.5 }, :numericality => { :less_than_or_equal_to => 24 }

  belongs_to :user
end

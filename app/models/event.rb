class Event < ActiveRecord::Base
  attr_accessible :date, :image, :location, :title, :invitees, :description, :duration, :start_time, :end_time

  belongs_to :user
  has_many :invitees
  
  validates :title, :presence => true
  validates :location, :presence => true
  #validates :duration, :numericality => true, :numericality => { :greater_than_or_equal_to => 0.5 }, :numericality => { :less_than_or_equal_to => 24 }

  
  mount_uploader :image, ImageUploader
end

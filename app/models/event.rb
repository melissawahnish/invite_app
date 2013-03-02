class Event < ActiveRecord::Base
  attr_accessible :date, :image, :location, :title
end

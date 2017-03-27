class Event < ApplicationRecord
  validates :title, presence:true
  validates :location, presence:true
  validates :spaces, presence:true

  #will need to add the workshop and sponsor relations
end

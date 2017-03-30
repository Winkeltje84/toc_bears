class Event < ApplicationRecord
  validates :title, presence: true
  validates :location, presence: true
  validates :spaces_available, presence: true, numericality: { only_integer: true }

  #will need to add the workshop and sponsor relations

  def self.open_for_public
    Event.where(public: true)
  end

  def self.in_company
    Event.where(public: false)
  end

end

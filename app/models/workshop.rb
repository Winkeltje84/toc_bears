class Workshop < ApplicationRecord
  validates :title, :description, presence: true

end

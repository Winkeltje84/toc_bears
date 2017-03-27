class Event < ApplicationRecord
  belongs_to :workshop
  belongs_to :sponsor
end

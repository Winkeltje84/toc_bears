class SponsorRequest < ApplicationRecord
  validates :company_name, presence: true
  validates :date, presence: true
end

class Sponsor < ApplicationRecord
  validates :company_name, presence: true, uniqueness: true
end

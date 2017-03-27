class Sponsor < ApplicationRecord
  validates :company_name, presence:true
  validates :company_name, uniqueness:true
end

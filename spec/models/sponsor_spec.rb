require 'rails_helper'

RSpec.describe Sponsor, type: :model do
  describe "validation" do
    it "is valid with a name" do
      sponsor = Sponsor.new(company_name: "TNW")
      expect(sponsor.valid?).to eq(true)
    end
    it "is invalid without a name" do
      sponsor = Sponsor.new(company_name:"")
      sponsor.valid?
      expect(sponsor.errors).to have_key(:company_name)
    end
    it "is invalid if another company has the same company_name" do
      Sponsor.create(company_name:"TNW")
      sponsor = Sponsor.new(company_name:"TNW")
      sponsor.valid?
      expect(sponsor.errors).to have_key(:company_name)
    end
  end
end

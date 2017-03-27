require 'rails_helper'

RSpec.describe User, type: :model do

  describe "When a user signs up" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:admin_user) { create :user, email: "guest@user.com", admin: true}

    it "by standard, the 'Admin' status is false" do
      expect(guest_user.admin).to eq(false)
    end

    it "if 'Admin' status is set to true by another Admin,
    the 'Admin' status is true" do
      expect(admin_user.admin).to eq(true)
    end

  end

  describe "When "
end

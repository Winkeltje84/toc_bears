require 'rails_helper'

RSpec.describe User, type: :model do

  describe "When a user signs up" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:admin_user) { create :user, email: "guest@user.com", admin: true}

    it "the 'Admin' status is false" do
      expect(guest_user.admin).to eq(false)
    end

    it "the 'Admin' status is false" do
      expect(admin_user.admin).to eq(true)
    end

  end

  describe "When "
end

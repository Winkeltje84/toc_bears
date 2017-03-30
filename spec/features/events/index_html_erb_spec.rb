require 'rails_helper'

RSpec.describe 'events/index', type: :feature do
  before { login_as user }
  context "renders partials" do
    let(:user) { create :user, admin: true}
    it "renders public events partial" do
      visit events_path
      expect(page).to have_text("Public Events")
    end
    it "renders incompany partial"
  end
  context "displays events" do
    it "shows the event information"
    it "shows multiple events"
  end
end

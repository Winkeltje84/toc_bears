require 'rails_helper'

RSpec.describe 'events/index', type: :feature do
  before { login_as user }
  let(:user) { create :user, admin: true}

  context "renders partials" do
    it "renders public events partial" do
      visit events_path
      expect(page).to have_text("Public Events")
    end
    it "renders incompany partial" do
      visit events_path
      expect(page).to have_text("Incompany Events")
    end
  end
  context "displays events" do
    let!(:public_event) { create :event, title: "This event is public", public: true }
    let!(:incompany_event) { create :event, title: "This event is not public", public: false }
    it "shows the event information" do
      visit events_path
      expect(page).to have_text("This event is public")
    end
    it "shows multiple events" do
      visit events_path
      expect(page).to have_text("This event is public")
      expect(page).to have_text("This event is not public")
    end
  end
end

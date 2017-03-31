require 'rails_helper'

RSpec.describe 'events/index', type: :feature do
  before { login_as user }
  let(:user) { create :user, admin: true}
  let!(:public_event) { create :event, title: "This event is public", public: true }
  let!(:incompany_event) { create :event, title: "This event is not public", public: false }

  context "displays events table partial" do
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
  it "links to the right event" do
    visit events_path
    click_link public_event.title
    expect(current_path).to eq(event_path(public_event))
  end
end

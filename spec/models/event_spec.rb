require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "Check validations" do
    context "title attribute" do
      it "is invalid without it" do
        event = Event.new(title: "")
        event.valid?
        expect(event.errors).to have_key(:title)
      end
      it "Is valid with it" do
        event = Event.new(title: "An new title")
        event.valid?
        expect(event.errors).not_to have_key(:title)
      end
    end
    context "location attribute" do
      it "is invalid without it" do
        event = Event.new(location: "")
        event.valid?
        expect(event.errors).to have_key(:location)
      end
      it "is valid with it" do
        event = Event.new(location: "Lee's place")
        event.valid?
        expect(event.errors).not_to have_key(:location)
      end
    end
    context "spaces attribute" do
      it "Is invalid without it" do
        event = Event.new(spaces_available: "")
        event.valid?
        expect(event.errors).to have_key(:spaces_available)
      end
      it "Is valid with it" do
        event = Event.new(spaces_available: 25)
        event.valid?
        expect(event.errors).not_to have_key(:spaces_available)
      end
      it "is invalid if not an integer" do
        event = Event.new(spaces_available: "text")
        event.valid?
        expect(event.errors).to have_key(:spaces_available)
      end
      it "is invalid with an decimal" do
        event = Event.new(spaces_available: 0.5)
        event.valid?
        expect(event.errors).to have_key(:spaces_available)
      end
      it "is valid with an integer" do
        event = Event.new(spaces_available: 5)
        event.valid?
        expect(event.errors).not_to have_key(:spaces_available)
      end
    end
  end
end

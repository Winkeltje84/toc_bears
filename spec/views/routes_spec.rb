require 'rails_helper'

RSpec.describe "Test the routes", type: :routing do
  describe "Test routes that should exist" do
    context "Related to pages controller" do
      it "root to go to the pages#homepage" do
        expect(get("/")).to route_to("pages#homepage")
      end
      it "/attend should go to pages#attend" do
        expect(get("/attend")).to route_to("pages#attend")
      end
      it "/incompany should go to pages#incompany" do
        expect(get("/incompany")).to route_to("pages#incompany")
      end
      it "/sponsor should go to pages#sponsor" do
        expect(get("/sponsor")).to route_to("pages#sponsor")
      end
    end
    context "Related to Devise" do
      it "new_user_session should go to devise/sessions#new" do
        expect(get("/admin/login")).to route_to("devise/sessions#new")
      end
      it "user_session should go to devise/sessions#create" do
        expect(post("/admin/login")).to route_to("devise/sessions#create")
      end
      it "destroy_user_session go to devise/sessions#destroy" do
        expect(delete("/admin/logout")).to route_to("devise/sessions#destroy")
      end
      it "new_user_password go to devise/passwords#new" do
        expect(get("/admin/password/new")).to route_to("devise/passwords#new")
      end
      it "edit_user_password go to devise/passwords#edit" do
        expect(get("/admin/password/edit")).to route_to("devise/passwords#edit")
      end
      it "user_password go to devise/passwords#[update:create]" do
        expect(patch("/admin/password")).to route_to("devise/passwords#update")
        expect(put("/admin/password")).to route_to("devise/passwords#update")
        expect(post("/admin/password")).to route_to("devise/passwords#create")
      end
    end
    context "Related to Workshops" do
      it "show workshop(s)"
      it "create and edit a workshop"
      it "delete a workshop"
    end
    context "Related to the Events" do
      it "show event(s)"
      it "create and edit a event"
      it "delete a workshop"
    end
  end
  describe "Test routes that should NOT exist" do
    context "related to devise" do
      it "does not have route to sign up" do
        expect(get("/admin/sign_up")).not_to route_to("devise/registrations#new")
      end
    end
  end
end

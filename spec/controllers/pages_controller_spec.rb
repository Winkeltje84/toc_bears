require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "Check Routes for Public Pages" do
    it "success for the homepage" do
      get :homepage
      expect(response).to have_http_status(:success)
    end
    it "success for the attend" do
      get :attend
      expect(response).to have_http_status(:success)
    end
    it "success for the sponsor" do
      get :sponsor
      expect(response).to have_http_status(:success)
    end
    it "success for the incompany" do
      get :incompany
      expect(response).to have_http_status(:success)
    end
  end

end

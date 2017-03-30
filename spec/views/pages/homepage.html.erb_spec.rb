require 'rails_helper'

RSpec.describe "pages/homepage.html.erb", type: :view do

  describe "view tests" do
    it "contains the text Join TOC" do
      render
      expect(rendered).to have_content("Join TOC")
    end

    it "contains the text InCompany" do
      render
      expect(rendered).to have_content("InCompany")
    end

    it "contains the text Host TOC" do
      render
      expect(rendered).to have_content("Host TOC")
    end
  end

end

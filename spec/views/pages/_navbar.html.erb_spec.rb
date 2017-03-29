
require 'rails_helper'

RSpec.describe "shared/_navbar.html.erb", type: :view do
  describe "view tests" do
    it "contains contains the text join taste of code" do
      render :partial => 'shared/navbar.html.erb'
      expect(rendered).to have_content("Join Taste of Code")
    end
    it "contains contains the text in company" do
      render :partial => 'shared/navbar.html.erb'
      expect(rendered).to have_content("In Company")
    end
    it "contains contains the text host taste of code" do
      render :partial => 'shared/navbar.html.erb'
      expect(rendered).to have_content("Host Taste of Code")
    end
  end

end

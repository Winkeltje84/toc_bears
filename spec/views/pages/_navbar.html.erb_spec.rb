require 'rails_helper'

RSpec.describe "shared/_navbar.html.erb", type: :view do
  describe "view tests" do
    it "contains the Join Taste of Code test" do
      render :partial => 'shared/navbar.html.erb'
      expect(rendered).to have_content("Join Taste of Code")
    end
  end

end

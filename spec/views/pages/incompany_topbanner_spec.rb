require 'rails_helper'

RSpec.describe "shared/incompany_topbanner.html.erb", type: :view do

  it "contains Taste of Code text" do
    render 'shared/incompany_topbanner.html.erb'
    expect(rendered).to have_content("Taste of Code")
  end

end

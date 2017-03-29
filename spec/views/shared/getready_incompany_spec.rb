require 'rails_helper'

RSpec.describe "shared/getready_incompany.html.erb", type: :view do

  it "contains getready_incompany text" do
    render partial: 'shared/getready_incompany.html.erb'
    expect(rendered).to have_content("Get Ready for the Day")
    expect(rendered).to have_content("Requirements")
  end
end

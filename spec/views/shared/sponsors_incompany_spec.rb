
require 'rails_helper'

RSpec.describe "shared/sponsors_incompany.html.erb", type: :view do
  it "contains sponsors section in the incompany file" do
    render partial: 'shared/sponsors_incompany.html.erb'
    expect(rendered).to have_content("Companies We Work With")
  end
end

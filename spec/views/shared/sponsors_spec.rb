require 'rails_helper'

RSpec.describe "shared/sponsors.html.erb", type: :view do

  it "contains sponsors text" do
    render partial: 'shared/sponsors.html.erb'
    expect(rendered).to have_content("Proudly supported by")
    expect(rendered).to have_content("some text about company 2")
    expect(rendered).not_to have_content("some text about company 7")
  end

end

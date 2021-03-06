require 'rails_helper'

RSpec.describe "shared/newsletter.html.erb", type: :view do

  it "contains newsletter text" do
    render partial: 'shared/newsletter.html.erb'
    expect(rendered).to have_content("Join our newsletter")
    expect(rendered).to have_content("Be the first one")
  end
end

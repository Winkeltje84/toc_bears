require 'rails_helper'

RSpec.describe "shared/choose_workshop.html.erb", type: :view do

  it "contains text" do
    render partial: 'shared/choose_workshop.html.erb'
    expect(rendered).to have_content("Choose your course")
    expect(rendered).to have_content("Get to know our different types of workshops")
  end
end

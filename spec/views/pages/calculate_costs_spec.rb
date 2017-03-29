require 'rails_helper'

RSpec.describe "shared/calculate_costs.html.erb", type: :view do

  it "contains Costs Calculation text" do
    render 'shared/calculate_costs.html.erb'
    expect(rendered).to have_content("Costs Calculation")
  end

end

require 'rails_helper'

RSpec.describe 'navigation', type: :feature do
    describe 'testing links' do
        it 'goes to the public page when the join taste of code link is clicked' do
          visit attend_path
          click_link('Join Taste of Code')
          expect(current_path).to eq(attend_path)
        end

        it 'goes to the public page when the join taste of code link is clicked' do
          visit attend_path
          click_link('In Company')
          expect(current_path).to eq(incompany_path)
        end
        
        it 'goes to the public page when the join taste of code link is clicked' do
          visit attend_path
          click_link('Host Taste of Code')
          expect(current_path).to eq(sponsor_path)
        end
    end
end

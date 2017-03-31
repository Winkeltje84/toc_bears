require 'rails_helper'

RSpec.describe 'navigation from homepage', type: :feature do
  describe 'testing links' do
    it 'goes to the attend page when the Join TOC link is clicked' do
      visit root_path
      click_link('Join TOC')
      expect(current_path).to eq(attend_path)
    end

    it 'goes to InCompany page when the InCOmpany link is clicked' do
      visit root_path
      click_link('InCompany')
      expect(current_path).to eq(incompany_path)
    end

    it 'goes to sponsor page when Host TOC link is clicked' do
      visit root_path
      click_link('Host TOC')
      expect(current_path).to eq(sponsor_path)
    end
  end
end

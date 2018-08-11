require 'rails_helper'

describe 'summit page' do
  context 'visit the summit page' do
    it 'displays 2018 summit content' do
      visit '/summit'
      expect(page).to have_content('2018 Leadership Summit')
    end
  end
end

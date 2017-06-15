require 'rails_helper'

describe 'summit page' do
  context 'visit the summit page' do
    it 'displays 2017 summit content' do
      visit '/summit'
      expect(page).to have_content('2017 Leadership Summit')
    end
  end
end

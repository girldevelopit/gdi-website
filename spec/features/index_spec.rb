require 'rails_helper'
require 'pry'

describe 'index page' do
  context 'visit the index page' do
    it 'displays the index page content' do
      visit '/'
      expect(page).to have_content('Who We Are')
    end

    it 'has a link to the donate page' do
      visit '/'
      click_on 'donate', match: :first
      expect(current_path).to eq('/donate')
      expect(page).to have_button('Donate Now')
    end

    it 'has a link to the about page' do
      visit '/'
      click_on 'about', match: :first
      expect(current_path).to eq('/about')
      expect(page).to have_content('Our Mission')
    end

    it 'has a link to the chapters page' do
      visit '/'
      click_on 'chapters', match: :first
      expect(current_path).to eq('/chapters')
      expect(page).to have_content("Don't see your hometown? Start a new chapter!")
    end

    it 'has a link to the materials page' do
      visit '/'
      click_on 'materials', match: :first
      expect(current_path).to eq('/materials')
      expect(page).to have_link('Additional Materials')
    end

    it 'has a link to the supports page' do
      visit '/'
      click_on 'supporters', match: :first
      expect(current_path).to eq('/supporters')
      expect(page).to have_content('We thank the following organizations for supporting Girl Develop It:')
    end
  end
end

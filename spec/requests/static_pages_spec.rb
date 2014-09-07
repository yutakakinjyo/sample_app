require 'rails_helper'

describe 'Static pages' do
  describe 'Home page' do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it 'should have the right title' do
      visit root_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end

    it 'should have the right title' do
      visit root_path
      expect(page).not_to have_title('| Home')
    end

  end

  describe 'Help page' do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it 'should have the right title' do
      visit help_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end

  end

  describe 'Abount page' do

    it "should have the content 'Abount Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it 'should have the right title' do
      visit about_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About')
    end

  end

  describe 'Contact page' do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it 'should have th right title' do
      visit contact_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end

  end
end

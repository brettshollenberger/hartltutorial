require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "has the right title" do
      visit '/static_pages/home'
      expect(page).to have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | Home")
    end

    it "should have the h1 help" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', :text => "Sample App")
    end

  end

  describe "Help page" do

    it "has the right title" do
      visit '/static_pages/help'
      expect(page).to have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | Help")
    end

    it "has the h1 'Sample App'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Get a Halp')
    end

  end

  describe "About page" do

    it "has the right title" do
      visit '/static_pages/about'
      expect(page).to have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | About Us")
    end

    it "has the h1 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About Us')\
    end
  end
end

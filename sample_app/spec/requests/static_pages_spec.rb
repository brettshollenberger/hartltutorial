require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "has the right title" do
      visit home_path
      expect(page).to have_selector('title',
        :text => "#{ base_title } | Home")
    end

    it "should have the h1 help" do
      visit home_path
      expect(page).to have_selector('h1', :text => "Sample App")
    end

  end

  describe "Help page" do

    it "has the right title" do
      visit help_path
      expect(page).to have_selector('title',
        :text => "#{ base_title } | Help")
    end

    it "has the h1 'Sample App'" do
      visit help_path
      expect(page).to have_selector('h1', :text => 'Get a Halp')
    end

  end

  describe "About page" do

    it "has the right title" do
      visit about_path
      expect(page).to have_selector('title',
        :text => "#{ base_title } | About Us")
    end

    it "has the h1 'About Us'" do
      visit about_path
      expect(page).to have_selector('h1', :text => 'About Us')\
    end
  end
end

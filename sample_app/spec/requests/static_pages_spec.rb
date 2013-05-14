require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "has the content 'Sample App'" do
      visit '/static_Pages/home'
      page.should have_content('Sample App')
    end

  end

end

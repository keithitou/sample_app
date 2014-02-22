require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App'}

  describe "Home page" do
    it "should hava the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should hava the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not hava a custome page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should hava the title 'Home'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should hava the title 'Home'" do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end

  it "should hava the title 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_title("#{base_title} | Contact")
  end
end

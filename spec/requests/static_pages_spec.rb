require 'spec_helper'

describe "Static pages" do
  
  subject { page } 
  
  describe "Home page" do
    before { visit root_path }
  
    it { should have_content('ようこそ') }
    it { should have_title('HomePage') }
    
  end
  
  describe "About page" do
    before { visit about_path }
    
    it "should have the content 'About'" do
      expect(page).to have_content('About')
    end
    
    it "should have the right title" do
      expect(page).to have_title("About")
    end
  end
  
  describe "Contact page" do
    before { visit contact_path }
    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Contact")
    end
  end
  
  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Help")
    end
  end
end
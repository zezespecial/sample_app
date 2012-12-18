require 'spec_helper'

describe "Static Pages" do
  
  let(:base_title) { "Sample App" }
  
  describe "Home page" do
    it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => "#{base_title}")
    end    
    
    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end    
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
        
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end       
  end  
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end
    
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', text: "#{base_title} | About Us")
    end       
  end  
  
  describe "Contacts page" do

    it "should have the h1 'Contacts'" do
      visit contacts_path
      page.should have_selector('h1', text: 'Contacts')
    end
    
    it "should have the right title" do
      visit contacts_path
      page.should have_selector('title', text: "#{base_title} | Contacts")
    end       
  end   
end

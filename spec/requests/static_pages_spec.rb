require 'spec_helper'

describe "StaticPages" do

  let (:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }    #teraz kazde it odnosi sie do page
  
  describe "Home Page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title ('| Home') }
  end
  
  describe "Help Page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About Us Page" do
    before { visit about_path }

    it { should have_content('About us') }
    it { should have_title(full_title('About us')) }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact'))}
  end

end

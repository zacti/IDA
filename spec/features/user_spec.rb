require 'rails_helper'

RSpec.feature "Users", type: :feature do

feature "Sign up" do 
	describe 'User creation' do
		it 'should raise user count by 1' do
		    visit new_user_path
		    fill_in "user[email]", with: "karipuff@gmail.com"
		    fill_in "user[password]", with: "aaa"
		    fill_in "user[password_confirmation]", with: "aaa"
		    click_button "sign up"
		    expect(page).to have_content "Interior Archictecture Design"
	    end
	end
  end
end
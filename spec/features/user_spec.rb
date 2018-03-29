require 'rails_helper'

RSpec.feature "Users", type: :feature do

feature "Sign up" do 
    visit new_user_path
    fill_in "user[email]", with: "karipuff@gmail.com"
    fill_in "user[password]", with: "aaa"
    fill_in "user[password_confirmation]", with: "aaa"
    click_button "Sign up"
    expect(page).to have_content "Interior Design"
  end
end
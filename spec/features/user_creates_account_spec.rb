require 'spec_helper'

feature 'user creates an account', %q{
  As an unauthenticated user
  I want to create an account
  So I can deposit/withdraw money and view my balance
} do 
  # ACCEPTANCE CRITERIA
  # * User visits the home page
  # * Clicks on link Create Account 
  # * Enters Email, Password and Confirmation Password
  # * Clicks on link Create Account 
  # * Redirected to Account show page
  scenario 'user registers with valid attributes' do 
    visit root_path
    click_link 'Create Account'
    
    fill_in 'Email', with: "email@email.com"
    fill_in 'Password', with: "1234" 
    fill_in 'Password Confirmation', with: "1234"
    click_button 'Create Account'

    expect(page).to have_content('Account successfully created!')
    expect(page).to have_content('Sign Out')
  end
end
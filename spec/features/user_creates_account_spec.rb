require 'spec_helper'

feature 'user creates and account', q%{
  As an unauthenticated user
  I want to create an account
  So I can deposit/withdraw money and vie my balance
} do 
  # ACCEPTANCE CRITERIA
  # * User visits the home page
  # * Clicks on link Create Account 
  # * Enters Account Name, Pin and Confirmation Pin
  # * Clicks on link Create Account 
  # * Redirected to Account show page

  visit root_path
  click_link 'Create Account'
  fill_in 'Account Name', with: "New Account"
  fill_in 'Pin', with: "1234" 
  fill_in 'Pin Confirmation', with: "1234"
  click_link 'Create Account'

  expect(page).to have_content('Account successfully created!')
  expect(page).to have_content('Sign Out')
end
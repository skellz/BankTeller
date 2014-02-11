require 'spec helper'

feature 'user signs in' q%{
  As an authenticated user
  I want to sign in 
  So I can access my money
} do 
  # ACCEPTANCE CRITERIA
  # * User visits home page
  # * Clicks on link Sign In 
  # * Enters account name and pin
  # * Clicks on link Sign 
  # * Redirected to account show page

  account = FactoryGirl.build(:account)

  visit root_path
  click_link 'Sign In'
  fill_in 'Account Name', with: account.name 
  fill_in 'Pin', with: account.pin
  click_link 'Sign In'

  expect(page).to have_content('Sign Out')
  expect(page).to have_content('Withdraw')
  expect(page).to have_content('Deposit')
end
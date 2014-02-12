require 'spec_helper'

feature 'user deposits or withdraws money from their account', %q{
  As an authenticated user
  I want to deposit or withdraw money from my account
  So I can keep track of my money
} do 
  let(:account) { FactoryGirl.build(:account_with_balance)}
  scenario 'user deposits money into account' do
    # ACCEPTANCE CRITERIA
    # * User visits home page
    # * Clicks on link Sign In 
    # * Succesfully enters login info
    # * Redirected to account show page
    # * Enters deposit amount 
    # * Clicks link deposit 
    # * Redirected to account page with new account balance

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: account.email 
    fill_in 'Password', with: account.password 
    click_link 'Sign In'

    fill_in 'Deposit Amount', with: '100'
    click_link 'Deposit'

    expect(page).to have_content('Amount successfully deposited')
    expect(account.balance).to eql(100)
  end

  scenario 'user withdraws money from account' do
    # ACCEPTANCE CRITERIA
    # * User visits account page
    # * Enters withdrawl amount 
    # * Clicks link withdraw
    # * Redirected to account page with new account balance

    visit account_path
    fill_in 'Withdraw', with: '50'
    click_link 'Withdraw'

    expect(page).to have_content('Amount successfully withdrawn')
    expect(account.balance).to eql(50)
  end
end
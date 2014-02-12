require 'spec_helper'

describe Account do 
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it { should have_valid(:password).when('1234', '2134') }
  it { should_not have_valid(:password).when('11', nil, '') }

  describe 'uniquness validations' do
    Account.delete_all
    before(:each) do
      FactoryGirl.create(:account)
    end
    it { should validate_uniqueness_of :email }
  end
end
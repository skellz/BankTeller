require 'spec_helper'

describe Account do 
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:pin) }

  it { should have_valid(:pin).when('1234', '2134') }
  it { should_not have_valid(:pin).when('11', nil, '', '12.23') }

  descibe 'uniquness validations' do
    before(:each) do
      FactoryGirl.create(:account)
    end
    it { should validate_uniqueness_of :name }
  end
end
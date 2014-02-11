FactoryGirl.define do 
  factory :account do 
    sequence(:name) { |n| "TestAccount#{n}" }
    pin 1234
    association :balance, factory: :balance

    factory :account_with_balance do 
      after(:build) do |account|
        build(:balance, balance: account.balance)
      end
    end
  end
end
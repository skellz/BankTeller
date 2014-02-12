FactoryGirl.define do 
  factory :account do 
    sequence(:email) { |n| "test#{n}@test.com" }
    password '1234'
    association :balance, factory: :balance

    factory :account_with_balance do 
      after(:create) do |account|
        create(:balance, account_id: account.id)
      end
    end
  end
end
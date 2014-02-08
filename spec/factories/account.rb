FactoryGirl.define do 
  factory :account do 
    sequence(:name) { |n| "TestAccount#{n}"
    pin "1234"
  end
end
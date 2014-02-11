class Balance < ActiveRecord::Base
  belongs_to :account
  has_many :transactions
end

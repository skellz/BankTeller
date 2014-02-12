class Balance < ActiveRecord::Base
  belongs_to :account
  has_many :transactions

  validates :balance, presence: true
  #validates :account_id, presence: true
end
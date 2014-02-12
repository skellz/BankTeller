class Balance < ActiveRecord::Base
  belongs_to :account
  has_many :transactions, dependent: :destroy

  validates :balance, presence: true
end
class Transaction < ActiveRecord::Base
  belongs_to :balance

  validates :deposit, numericality: true
  validates :withdrawl, numericality: true
end

class Account < ActiveRecord::Base
  has_one :balance
  has_many :transactions, through: :balance

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

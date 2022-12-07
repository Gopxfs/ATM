class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  validates :name, presence: true, length: { minimum: 0, maximum: 100 }
  validates :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :account, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

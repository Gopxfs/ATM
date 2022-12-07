# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :user

  validates :type, presence: true
  validates :value, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

# frozen_string_literal: true

class Penalty < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }

  has_and_belongs_to_many :rooms
end

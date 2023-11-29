# frozen_string_literal: true

class Tenant < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_one :room
  has_many :expenses
end

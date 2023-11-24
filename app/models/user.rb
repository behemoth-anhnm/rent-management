# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_one :room
  has_many :expenses
end

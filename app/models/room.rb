# frozen_string_literal: true

class Room < ApplicationRecord
  validates :room_name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: { if: -> { description.present? } }

  belongs_to :user
  has_many :expenses
  has_and_belongs_to_many :penalties
end

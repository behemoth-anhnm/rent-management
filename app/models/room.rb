# frozen_string_literal: true

class Room < ApplicationRecord
  validates :room_name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :capacity, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: { if: -> { description.present? } }

  has_and_belongs_to_many :statuses
  has_and_belongs_to_many :penalties
end

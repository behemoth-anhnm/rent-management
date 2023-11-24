# frozen_string_literal: true

class Expense < ApplicationRecord
  validates :electricity_fee, :water_fee, :garbage_fee, :rent_fee, :internet_fee, presence: true,
                                                                                  numericality: { greater_than_or_equal_to: 0 }
  validates :due_date, presence: true

  belongs_to :user
  belongs_to :room
  belongs_to :status
  belongs_to :penalty, optional: true
end

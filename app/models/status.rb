# frozen_string_literal: true

class Status < ApplicationRecord
  validates :status_name, presence: true

  has_many :expenses
end

# frozen_string_literal: true

class Status < ApplicationRecord
  validates :status_name, presence: true

  has_and_belongs_to_many :rooms
end

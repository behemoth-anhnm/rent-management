# frozen_string_literal: true

class AddStatusToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenses, :status, foreign_key: true
  end
end

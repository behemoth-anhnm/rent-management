# frozen_string_literal: true

class AddPenaltyToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenses, :penalty, foreign_key: true
  end
end

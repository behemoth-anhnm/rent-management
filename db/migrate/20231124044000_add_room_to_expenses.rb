# frozen_string_literal: true

class AddRoomToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenses, :room, foreign_key: true
  end
end

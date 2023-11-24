# frozen_string_literal: true

class CreateExpense < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :electricity_fee
      t.integer :water_fee
      t.integer :garbage_fee
      t.integer :rent_fee
      t.integer :internet_fee
      t.date :due_date
      t.timestamps
    end
  end
end

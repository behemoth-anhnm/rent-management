# frozen_string_literal: true

class CreatePenalties < ActiveRecord::Migration[7.0]
  def change
    create_table :penalties do |t|
      t.string :name
      t.integer :amount
      t.date :penalty_date
      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :price
      t.integer :capacity
      t.text :description
      t.timestamps
    end
  end
end

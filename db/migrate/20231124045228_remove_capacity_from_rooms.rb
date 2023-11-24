# frozen_string_literal: true

class RemoveCapacityFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :capacity, :integer
  end
end

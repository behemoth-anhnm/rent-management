# frozen_string_literal: true

class AddReasonToPenalties < ActiveRecord::Migration[7.0]
  def change
    add_column :penalties, :reason, :text
  end
end

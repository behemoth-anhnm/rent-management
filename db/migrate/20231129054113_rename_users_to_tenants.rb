# frozen_string_literal: true

class RenameUsersToTenants < ActiveRecord::Migration[7.0]
  def change
    rename_table :users, :members
  end
end

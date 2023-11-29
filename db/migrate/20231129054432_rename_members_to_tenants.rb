# frozen_string_literal: true

class RenameMembersToTenants < ActiveRecord::Migration[7.0]
  def change
    rename_table :members, :tenants
  end
end

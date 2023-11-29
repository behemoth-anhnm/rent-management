class RenameUserIdInRooms < ActiveRecord::Migration[7.0]
  def change
    rename_column :rooms, :user_id, :tenant_id
  end
end

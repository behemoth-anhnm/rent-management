class ChangeForeignKeyInExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :expenses, :user_id, :tenant_id
  end
end

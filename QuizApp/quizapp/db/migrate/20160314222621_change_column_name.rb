class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :exposicions, :type, :expType
  end
end

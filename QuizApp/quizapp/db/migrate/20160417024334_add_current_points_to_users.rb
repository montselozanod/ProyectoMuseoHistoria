class AddCurrentPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :currentPoints, :integer
  end
end

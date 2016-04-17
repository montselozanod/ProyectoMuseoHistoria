class AddNumTryToTrypoints < ActiveRecord::Migration
  def change
    add_column :trypoints, :numTry, :integer
  end
end

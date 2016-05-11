class AddMuseoToTrypoint < ActiveRecord::Migration
  def change
    add_column :trypoints, :museo, :string
    add_column :trypoints, :sala, :string
  end
end

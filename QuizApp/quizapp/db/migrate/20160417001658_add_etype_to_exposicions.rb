class AddEtypeToExposicions < ActiveRecord::Migration
  def change
    add_column :exposicions, :etype, :string
    add_column :exposicions, :active, :boolean
  end
end

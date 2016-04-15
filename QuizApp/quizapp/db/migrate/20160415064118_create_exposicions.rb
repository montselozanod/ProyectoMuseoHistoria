class CreateExposicions < ActiveRecord::Migration
  def change
    create_table :exposicions do |t|
      t.string :name
      t.string :description
      t.references :museo, index: true

      t.timestamps
    end
  end
end

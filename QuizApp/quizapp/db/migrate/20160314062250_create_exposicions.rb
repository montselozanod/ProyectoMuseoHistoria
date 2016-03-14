class CreateExposicions < ActiveRecord::Migration
  def change
    create_table :exposicions do |t|
      t.string :name
      t.text :description
      t.string :imgURL
      t.string :type
      t.boolean :active
      t.references :museo, index: true

      t.timestamps
    end
  end
end

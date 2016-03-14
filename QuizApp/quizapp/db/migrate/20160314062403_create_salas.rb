class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.integer :number
      t.string :name
      t.string :mapImgURL
      t.text :description
      t.references :exposicion, index: true

      t.timestamps
    end
  end
end

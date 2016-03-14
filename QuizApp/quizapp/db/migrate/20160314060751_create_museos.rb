class CreateMuseos < ActiveRecord::Migration
  def change
    create_table :museos do |t|
      t.string :name
      t.text :description
      t.string :imgURL

      t.timestamps
    end
  end
end

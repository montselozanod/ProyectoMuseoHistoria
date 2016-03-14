class CreatePregunta < ActiveRecord::Migration
  def change
    create_table :pregunta do |t|
      t.text :description
      t.text :extraInfo
      t.string :imgURL
      t.boolean :active
      t.references :sala, index: true
      t.references :answer, index: true

      t.timestamps
    end
  end
end

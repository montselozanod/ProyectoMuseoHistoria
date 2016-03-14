class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :textAnswer
      t.boolean :active
      t.string :imgURL
      t.references :pregunta, index: true

      t.timestamps
    end
  end
end

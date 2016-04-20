class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|

      t.timestamps
    end
  end
end

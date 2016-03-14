class RemoveAnswerFromPregunta < ActiveRecord::Migration
  def change
    remove_column :pregunta, :answer_id, :integer
  end
end

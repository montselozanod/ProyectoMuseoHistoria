class CreateTrypoints < ActiveRecord::Migration
  def change
    create_table :trypoints do |t|
      t.integer :points
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end

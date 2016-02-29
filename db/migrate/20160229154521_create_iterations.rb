class CreateIterations < ActiveRecord::Migration
  def change
    create_table :iterations do |t|
      t.integer :number
      t.string :label
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

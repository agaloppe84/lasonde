class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey, index: true, foreign_key: true
      t.string :label
      t.string :kind
      t.integer :rank

      t.timestamps null: false
    end
  end
end

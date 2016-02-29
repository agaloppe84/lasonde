class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :label
      t.integer :rank
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

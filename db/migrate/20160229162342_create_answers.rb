class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :iteration, index: true, foreign_key: true
      t.actable
      t.timestamps null: false
    end
  end
end

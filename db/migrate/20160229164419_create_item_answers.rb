class CreateItemAnswers < ActiveRecord::Migration
  def change
    create_table :item_answers do |t|
      t.string :content
      t.references :respondent, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

    end
  end
end

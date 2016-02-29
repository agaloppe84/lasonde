class CreateTextAnswers < ActiveRecord::Migration
  def change
    create_table :text_answers do |t|
      t.string :content
      t.references :respondent, index: true, foreign_key: true

    end
  end
end

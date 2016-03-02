class RemoveContentFromItemAnswers < ActiveRecord::Migration
  def change
    remove_column :item_answers, :content
  end
end

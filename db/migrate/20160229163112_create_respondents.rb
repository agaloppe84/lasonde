class CreateRespondents < ActiveRecord::Migration
  def change
    create_table :respondents do |t|

      t.timestamps null: false
    end
  end
end

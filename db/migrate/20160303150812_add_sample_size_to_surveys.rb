class AddSampleSizeToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :sample_size, :integer, default: 50
  end
end

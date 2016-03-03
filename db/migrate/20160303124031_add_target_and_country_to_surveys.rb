class AddTargetAndCountryToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :target, :string
    add_column :surveys, :country, :string
  end
end

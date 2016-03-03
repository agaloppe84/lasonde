class AddTargetAndCountryToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :target, :string, default: "nat rep"
    add_column :surveys, :country, :string, default: "France"
  end
end

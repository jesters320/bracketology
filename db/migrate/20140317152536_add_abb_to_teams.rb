class AddAbbToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :abb, :string
  end
end

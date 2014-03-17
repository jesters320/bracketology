class AddAwayAbbToGame < ActiveRecord::Migration
  def change
    add_column :games, :away_abb, :string
  end
end

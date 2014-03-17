class RemoveOldColumnsFromGames < ActiveRecord::Migration
  def change
	remove_column :games, :home_team
	remove_column :games, :away_team
	remove_column :games, :home_abb
	remove_column :games, :away_abb
  end
end

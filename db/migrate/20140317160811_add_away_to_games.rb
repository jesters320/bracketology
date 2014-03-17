class AddAwayToGames < ActiveRecord::Migration
  def change
    add_column :games, :away_id, :integer
  end
end

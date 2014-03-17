class AddHomeToGames < ActiveRecord::Migration
  def change
    add_column :games, :home_id, :integer
  end
end

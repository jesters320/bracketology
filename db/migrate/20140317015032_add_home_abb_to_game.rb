class AddHomeAbbToGame < ActiveRecord::Migration
  def change
    add_column :games, :home_abb, :string
  end
end

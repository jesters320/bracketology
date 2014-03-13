class CreateAwayScores < ActiveRecord::Migration
  def change
    create_table :away_scores do |t|
      t.integer :ones
      t.integer :display_order

      t.timestamps
    end
  end
end

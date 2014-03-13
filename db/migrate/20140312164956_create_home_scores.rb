class CreateHomeScores < ActiveRecord::Migration
  def change
    create_table :home_scores do |t|
      t.integer :ones
      t.integer :display_order

      t.timestamps
    end
  end
end

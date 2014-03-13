class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.references :user, index: true
      t.references :home_score, index: true
      t.references :away_score, index: true

      t.timestamps
    end
  end
end

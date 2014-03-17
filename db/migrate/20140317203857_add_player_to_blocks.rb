class AddPlayerToBlocks < ActiveRecord::Migration
  def change
    add_reference :blocks, :player, index: true
	remove_reference :blocks, :user
  end
end

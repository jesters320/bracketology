class Block < ActiveRecord::Base
  belongs_to :player
  belongs_to :home_score
  belongs_to :away_score

	def self.unavailable_blocks(current_player_id)
		@open_blocks = Block.where.not(player_id: nil)
		@open_blocks.delete_if { |block| print block.player_id; block.player_id == current_player_id }
	end
  
	def label
		'h:' + home_score.ones.to_s + ' | a:' + away_score.ones.to_s
	end
	
end

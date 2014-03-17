class Block < ActiveRecord::Base
  belongs_to :player
  belongs_to :home_score
  belongs_to :away_score
  	
	def label
		'h:' + home_score.ones.to_s + ' | a:' + away_score.ones.to_s
	end
end

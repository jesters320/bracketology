class Game < ActiveRecord::Base

	def find_winner
		h = HomeScore.find_by(ones: self.home_score % 10)
		a = AwayScore.find_by(ones: self.away_score % 10)
		Block.find_by(home_score: h, away_score: a)
	end
end

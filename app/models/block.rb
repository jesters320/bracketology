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
	
		class << self
	
		def fetch_and_parse(url)
		  Nokogiri::HTML(RestClient.get(url))
		end
		
		def espn_cells
		  doc = fetch_and_parse("http://scores.espn.go.com/ncb/boxscore?gameId=400551234")

		  #logger.debug doc
		  
		  doc.css(".linescore td").each do |elm|
			# title = elm.css("header h1").inner_text
			# speaker = elm.css("header h2").inner_text.presence
			# abstract = elm.css("> p").inner_text
			# bio = elm.css(".bio").inner_text.presence

			# Talk.create(:year => 2014, :title => title, :speaker => speaker, :abstract => abstract, :bio => bio)
			#logger.debug elm
			puts elm.content
		  end
		end

	end
	
end

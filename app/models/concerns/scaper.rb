class Scraper
	
	class << self
	
		def fetch_and_parse(url)
		  Nokogiri::HTML(RestClient.get(url))
		end
		
		def espn_cells
		  doc = fetch_and_parse("http://scores.espn.go.com/ncb/boxscore?gameId=400551234")

		  doc.css(".linescore td").each do |elm|
			# title = elm.css("header h1").inner_text
			# speaker = elm.css("header h2").inner_text.presence
			# abstract = elm.css("> p").inner_text
			# bio = elm.css(".bio").inner_text.presence

			# Talk.create(:year => 2014, :title => title, :speaker => speaker, :abstract => abstract, :bio => bio)
			
			elm
		  end
		end

	end
	
end
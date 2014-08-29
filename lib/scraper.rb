class Scraper

	def initialize(url)   
		@url = url  
		@doc = fetch_and_parse(url)  
	end 

	def fetch_and_parse(url)
	  Nokogiri::HTML(RestClient.get(url))
	end
	
	def get_home_score
	  begin
		@doc.css(".linescore td.ts")[0].inner_text
	  rescue
		-1
	  end
	end
	
	def get_visitor_score
	  begin
		@doc.css(".linescore td.ts")[1].inner_text
	  rescue
		-1
	  end
	end

	def full_doc
		@doc
	end
	
end
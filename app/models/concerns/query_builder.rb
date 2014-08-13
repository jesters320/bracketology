class QueryBuilder 
	extend Forwardable 
	attr_reader :query 
	
	def_delegators :@query, :to_a, :to_sql, :each 
	
	def initialize(query) 
		@query = query 
	end 
	
	protected 
	
		def reflect(query) 
			self.class.new(query) 
		end 
end
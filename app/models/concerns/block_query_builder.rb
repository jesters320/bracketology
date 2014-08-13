class BlockQueryBuilder < QueryBuilder 

	def initialize(query = nil) 
		super(query || Block.unscoped) 
	end 
	
	def open_blocks() 
		reflect( 
			query.where(
				block[:player_id]
					.not_eq(nil)
					)
				) 
	end 
	
	private 
	
		def block 
			Block.arel_table
		end 
end
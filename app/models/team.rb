class Team < ActiveRecord::Base
	has_one :home, class_name: 'Game', foreign_key: 'home_id'
	has_one :away, class_name: 'Game', foreign_key: 'away_id'
end

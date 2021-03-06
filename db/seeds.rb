# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

HomeScore.delete_all
AwayScore.delete_all
Block.delete_all
Team.delete_all
Game.delete_all

0.upto(9) do |h|
	puts "Adding home: #{h}"
	HomeScore.create(ones: h, display_order: h+1)
end

0.upto(9) do |a|
	puts "Adding away: #{a}"
	AwayScore.create(ones: a, display_order: a+1)
end

HomeScore.order(:display_order).each do |h|
	AwayScore.order(:display_order).each do |a|
		puts "Adding home: #{h.ones} - away: #{a.ones}"
		Block.create(home_score: h, away_score: a)
	end
end

1.upto(65) do |g|
	Game.create(game_number: g)
end

# South
Team.create(seed:2, name:'Kansas', abb: 'KAN')
Team.create(seed:1, name:'Florida', abb: 'FLA')
Team.create(seed:3, name:'Syracuse', abb: 'SYR')
Team.create(seed:4, name:'UCLA', abb: 'UCLA')
Team.create(seed:5, name:'VCU', abb: 'VCU')
Team.create(seed:6, name:'Ohio State', abb: 'OSU')
Team.create(seed:7, name:'New Mexico', abb: 'NM')
Team.create(seed:8, name:'Colorado', abb: 'COL')
Team.create(seed:9, name:'Pittsburgh', abb: 'PIT')
Team.create(seed:10, name:'Stanford', abb: 'STA')
Team.create(seed:11, name:'Dayton', abb: 'DYT')
Team.create(seed:12, name:'Stephen F. Austin', abb: 'SFA')
Team.create(seed:13, name:'Tulsa', abb: 'TUL')
Team.create(seed:14, name:'Western Michigan', abb: 'WMI')
Team.create(seed:15, name:'Eastern Kentucky', abb: 'EKY')
Team.create(seed:16, name:'Play-in', abb: 'PIN')
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
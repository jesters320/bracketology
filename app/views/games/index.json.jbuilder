json.array!(@games) do |game|
  json.extract! game, :home_team, :away_team, :home_score, :away_score, :unique_identifier
  json.url game_url(game, format: :json)
end
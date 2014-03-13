json.array!(@away_scores) do |away_score|
  json.extract! away_score, :ones, :display_order
  json.url away_score_url(away_score, format: :json)
end
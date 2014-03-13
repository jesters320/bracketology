json.array!(@home_scores) do |home_score|
  json.extract! home_score, :ones, :display_order
  json.url home_score_url(home_score, format: :json)
end
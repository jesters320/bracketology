json.array!(@blocks) do |block|
  json.extract! block, :user_id, :home_score_id, :away_score_id
  json.url block_url(block, format: :json)
end
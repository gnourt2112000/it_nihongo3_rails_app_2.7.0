json.extract! game_review, :id, :user_id, :game_id, :review, :created_at, :updated_at
json.url game_review_url(game_review, format: :json)

json.extract! news, :id, :content, :user_id, :created_at, :updated_at
json.url news_url(news, format: :json)

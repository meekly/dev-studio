json.extract! article, :id, :name, :text, :admin_user_id, :photo, :created_at, :updated_at
json.url article_url(article, format: :json)
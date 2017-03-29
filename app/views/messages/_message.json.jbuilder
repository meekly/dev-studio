json.extract! message, :id, :title, :text, :author, :email, :is_read, :created_at, :updated_at
json.url message_url(message, format: :json)

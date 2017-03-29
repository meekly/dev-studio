json.extract! task, :id, :project_id, :admin_user_id, :deadline, :done, :created_at, :updated_at
json.url task_url(task, format: :json)

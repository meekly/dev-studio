json.extract! project, :id, :name, :url, :source_url, :description, :finished, :created_at, :updated_at
json.url project_url(project, format: :json)

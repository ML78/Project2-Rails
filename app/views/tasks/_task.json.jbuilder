json.extract! task, :id, :name, :description, :image, :category, :score, :created_at, :updated_at
json.url task_url(task, format: :json)

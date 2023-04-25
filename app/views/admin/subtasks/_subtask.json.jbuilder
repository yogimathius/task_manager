json.extract! subtask, :id, :title, :description, :done, :completed_at, :task_id, :created_at, :updated_at
json.url subtask_url(subtask, format: :json)

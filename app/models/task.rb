class Task < ApplicationRecord
  has_many :subtasks
  # Task.all.first.subtasks
end

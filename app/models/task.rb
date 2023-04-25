class Task < ApplicationRecord
  scope :completed, -> { where(completed: true) }

  has_many :subtasks
  # Task.all.first.subtasks
end

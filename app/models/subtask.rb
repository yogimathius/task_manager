class Subtask < ApplicationRecord
  belongs_to :task

  after_update :check_completed_subtasks

  def check_completed_subtasks
    # byebug
    task.update_done_status
  end
end

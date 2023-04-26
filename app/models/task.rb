class Task < ApplicationRecord
  validates :title, presence: true

  scope :done, -> { where(done: true) }

  has_many :subtasks

  def update_done_status
    if subtasks.all?(&:done)
      update_attribute(:done, true)
    else
      update_attribute(:done, false)
    end
  end
end

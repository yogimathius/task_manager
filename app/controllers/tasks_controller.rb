class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    binding.break
    @tasks = filter_params[:is_completed] ? Task.completed : Task.all

    render :json => @tasks
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    render :json => @task
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def task_params
    #   params.require(:task).permit(:title, :description, :done, :completed_at)
    # end

    def filter_params
      params.permit(:is_completed)
    end
end

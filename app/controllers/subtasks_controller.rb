class SubtasksController < ApplicationController
  before_action :set_subtask, only: %i[ show edit update destroy ]

  # GET /subtasks or /subtasks.json
  def index
    @subtasks = Subtask.all
  end

  # GET /subtasks/1 or /subtasks/1.json
  def show
  end

  # GET /subtasks/new
  def new
    @subtask = Subtask.new
  end

  # GET /subtasks/1/edit
  def edit
  end

  # POST /subtasks or /subtasks.json
  def create
    @subtask = Subtask.new(subtask_params)

    respond_to do |format|
      if @subtask.save
        format.html { redirect_to subtask_url(@subtask), notice: "Subtask was successfully created." }
        format.json { render :show, status: :created, location: @subtask }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subtasks/1 or /subtasks/1.json
  def update
    respond_to do |format|
      if @subtask.update(subtask_params)
        format.html { redirect_to subtask_url(@subtask), notice: "Subtask was successfully updated." }
        format.json { render :show, status: :ok, location: @subtask }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtasks/1 or /subtasks/1.json
  def destroy
    @subtask.destroy

    respond_to do |format|
      format.html { redirect_to subtasks_url, notice: "Subtask was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtask
      @subtask = Subtask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subtask_params
      params.require(:subtask).permit(:title, :description, :done, :completed_at, :task_id)
    end
end

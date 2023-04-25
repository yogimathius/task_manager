class Admin::TasksController < ApplicationController

    # GET /tasks/new
    def new
      @task = Task.new
    end
  
    # GET /tasks/1/edit
    def edit
    end
  
    # POST /tasks or /tasks.json
    def create
      @task = Task.new(task_params)
  
      respond_to do |format|
        if @task.save
          format.html { redirect_to task_url(@task), notice: "Task was successfully created." }
          format.json { render :show, status: :created, location: @task }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @task.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /tasks/1 or /tasks/1.json
    def update
      respond_to do |format|
        if @task.update(task_params)
          format.html { redirect_to task_url(@task), notice: "Task was successfully updated." }
          format.json { render :show, status: :ok, location: @task }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @task.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /tasks/1 or /tasks/1.json
    def destroy
      @task.destroy
  
      respond_to do |format|
        format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
        format.json { head :no_content }
      end
    end
end

class TasksController < ApplicationController

    def create 
        @task= Task.create(task_params)
        if @task.save
            redirect_to_todo_path(@task.todo_id)
        
        else    
            redirect_to_root_path  
            
        end
    end

    private 
    def task_params
        params.require(:task).perform(:title,:done,:todo_id)
    end


end

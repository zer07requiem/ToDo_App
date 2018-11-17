
class TodoController<ApplicationController
    def index
    end
    def show
        @todo_description = "whatever"
        @todo_pomodoro_estimate = 6
        todo_id = params[:id]
        if todo_id =='1'
            @todo_description = "Get To School On Time"
            @todo_pomodoro_estimate = 1
            
        elsif todo_id =='2'
            @todo_description = "Passed in Homeworks"
              @todo_pomodoro_estimate = 30
        elseif todo_id =='3'
            @todo_description = "Get Home Before 5"
            @todo_pomodoro_estimate = 60
        end    
    end
end
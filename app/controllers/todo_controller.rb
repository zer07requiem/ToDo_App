
class TodoController<ApplicationController
    def index
    end
    def show
        @todo_description = "whatever"
        @todo_pomodoro_estimate =6
        todo_id ='1'
        if todo_id =='1'
            @todo_description ="stop"
        elseif todo_id =='2'
        end    
    end
end
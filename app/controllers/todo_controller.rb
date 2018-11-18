
class TodoController<ApplicationController
    def index
     @todos = Todo.all
    end
    def show
        @todo=Todo.find_by_id(params[:id])
        if @todo_id =='1'
            @todo_description = "Get To School On Time School On Time"
            @todo_pomodoro_estimate = 1
            
        elsif @todo_id =='2'
            @todo_description = "Passed in Homeworks"
            @todo_pomodoro_estimate = 1
        elsif @todo_id =='3'
            @todo_description = "Daily Grind"
            @todo_pomodoro_estimate = 5
        end
    end
    def new
    end
    def create
        t=Todo.new
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    def edit
          @todo = Todo.find_by_id(params[:id])
    end
    def update
        t = Todo.find_by_id(params['id'])
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    def destroy
        t = Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
end
class TodoListsController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/todo_lists" do
      todo_list = TodoList.all
      todo_list.to_json
    end

 
    get "/user_todo_list/:id" do
      todo_list = TodoList.user_todo_list(params[:id])
      todo_list.to_json
    end

    post "/todo_lists" do
      new_todo_list = TodoList.create(params)
      new_todo_list.to_json
    end

  
end
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


    delete "/todo_lists/:id" do
      delete_todo = TodoList.find(params[:id])
      delete_todo.destroy
    end

    patch "/todo_lists/:id" do
      edit_todo = TodoList.find(params[:id])
      edit_todo.update(params)
      edit_todo.to_json
    end

    patch "/todo_lists_complete/:id" do
      finish_todo = TodoList.note_completion(params[:id])
  
      finish_todo.to_json
    end

  
end
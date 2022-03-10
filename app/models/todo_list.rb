class TodoList < ActiveRecord::Base
    belongs_to :user
    
    def self.user_todo_list(id)
        TodoList.all.where("user_id == ?", id)
    end

    def self.note_completion(id)
        todo_item = self.find(id)
        complete = !todo_item.completed
        completed_value = todo_item.update(completed: complete)
    end
end
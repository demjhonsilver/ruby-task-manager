# task_manager.rb
class TaskManager
    def initialize
      @tasks = []
    end
  
    def add_task(task)
      @tasks << task
    end
  
    def update_task(index, title, description, status, deadline)
      task = @tasks[index]
      task.title = title
      task.description = description
      task.status = status
      task.deadline = deadline
    end
  
    def remove_task(index)
      @tasks.delete_at(index)
    end
  
    def display_tasks
      @tasks.each_with_index do |task, index|
        puts "Task #{index + 1}:"
        puts task
        puts "-----------------------"
      end
    end
  end
  
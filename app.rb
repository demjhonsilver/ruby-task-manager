# app.rb

require "colorize"


require_relative "task"
require_relative "task_manager"

task_manager = TaskManager.new

def display_menu
  puts "Task Manager Menu"
  puts "1. Add Task"
  puts "2. Update Task"
  puts "3. Remove Task"
  puts "4. Display Tasks"
  puts "5. Exit".red.on_black
  print "Enter your choice: ".colorize(:color => :green, :mode => :bold, :background => :black)
end

loop do
  display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter task title: "
    title = gets.chomp
    print "Enter task description: "
    description = gets.chomp
    print "Enter task status: "
    status = gets.chomp
    print "Enter task deadline: "
    deadline = gets.chomp

    task = Task.new(title, description, status, deadline)
    task_manager.add_task(task)
    puts "Task added successfully!".colorize(:green)
    puts ""
  when 2
    # ...
  when 3
    print "Enter the task number to remove: "
    index = gets.chomp.to_i - 1
    if index >= 0 && index < task_manager.instance_variable_get(:@tasks).length
      task_manager.remove_task(index)
      puts "Task removed successfully!".colorize(:red)
      puts ""
    else
      puts "Invalid task number.".colorize(:red)
      puts ""
    end
  when 4
    task_manager.display_tasks
    puts ""
  when 5
    puts "Thank you for using the Task Manager!".colorize(:color => :yellow, :mode => :bold, :background => :black)
    break
  else
    puts "Invalid choice.".colorize(:red)
    puts ""
  end
end

# ...

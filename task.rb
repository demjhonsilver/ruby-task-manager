# task.rb
class Task
    attr_accessor :title, :description, :status, :deadline
  
    def initialize(title, description, status = "Incomplete", deadline = nil)
      @title = title
      @description = description
      @status = status
      @deadline = deadline
    end
  
    def mark_complete
      @status = "Complete"
    end
  
    def to_s
      "Title: #{@title}\nDescription: #{@description}\nStatus: #{@status}\nDeadline: #{@deadline}"
    end
  end
  
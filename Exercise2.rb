require_relative "Exercise1"

class TodoList < Task
  @@todolist = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@todolist
  end

  def add_task(description,due_date)
    task = Task.new(description,due_date)
    @@todolist << task
  end

end

new_list = TodoList.new("Matt's List")

new_list.add_task('task1')
puts TodoList.all.inspect

new_list.add_task('task2')
puts TodoList.all.inspect

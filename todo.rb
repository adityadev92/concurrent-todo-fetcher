class Todo
  attr_accessor :id, :title, :completed

  def initialize(id, title, completed)
    @id = id
    @title = title
    @completed = completed
  end

  def to_s
    "TODO at index #{id}:\n  Title: #{title}\n  Completed: #{completed}\n--------------"
  end
end

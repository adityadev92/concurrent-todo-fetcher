require './todo'
require './api_service'
require './user_input'
require './main_service'

class MainService
  def self.main
    num_todos = UserInput.get_num_todos

    todos = (2..num_todos * 2).step(2).map { |index| ApiService.fetch_todo(index) }
    todos.each { |todo| puts todo }
  end
end

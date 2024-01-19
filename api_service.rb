require 'net/http'
require 'json'

class ApiService
  BASE_URL = "https://jsonplaceholder.typicode.com"

  def self.fetch_todo(index)
    uri = URI("#{BASE_URL}/todos/#{index}")

    response = Net::HTTP.get(uri)
    todo_data = JSON.parse(response)

    Todo.new(todo_data['id'], todo_data['title'], todo_data['completed'])
  end
end

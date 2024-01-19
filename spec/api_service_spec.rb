require 'helper'

RSpec.describe ApiService do
  describe '.fetch_todo' do
    let(:todo_data) { { 'id' => 1, 'title' => 'Test Todo', 'completed' => false } }

    before do
      allow(Net::HTTP).to receive(:get).and_return(todo_data.to_json)
    end

    it 'fetches and returns a Todo object' do
      index = 1
      uri = URI("#{ApiService::BASE_URL}/todos/#{index}")

      expect(Net::HTTP).to receive(:get).with(uri)

      todo = ApiService.fetch_todo(index)

      expect(todo).to be_an_instance_of(Todo)
      expect(todo.id).to eq(1)
      expect(todo.title).to eq('Test Todo')
      expect(todo.completed).to be_falsey
    end
  end
end

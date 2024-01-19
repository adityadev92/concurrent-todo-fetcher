require 'helper'

RSpec.describe Todo do
  describe '#initialize' do
    it 'creates a new Todo object with the provided attributes' do
      todo = Todo.new(1, 'Sample Todo', false)

      expect(todo.id).to eq(1)
      expect(todo.title).to eq('Sample Todo')
      expect(todo.completed).to be_falsey
    end
  end

  describe '#to_s' do
    it 'returns a string representation of the Todo object' do
      todo = Todo.new(1, 'Sample Todo', false)

      expected_output = "TODO at index 1:\n  Title: Sample Todo\n  Completed: false\n--------------"
      expect(todo.to_s).to eq(expected_output)
    end
  end
end

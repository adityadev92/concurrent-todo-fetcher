require 'helper'

RSpec.describe 'main' do
  describe '#main' do
    let(:todos) do
      [
        {
          "userId": 1,
          "id": 1,
          "title": "delectus aut autem",
          "completed": false
        },
        {
          "userId": 1,
          "id": 2,
          "title": "quis ut nam facilis et officia qui",
          "completed": false
        }
      ]
    end

    before do
      allow(UserInput).to receive(:get_num_todos).and_return(2)
      allow(ApiService).to receive(:fetch_todo).and_return(todos)
    end

    it 'fetches todos and prints them' do
      expect(ApiService).to receive(:fetch_todo).with(2)

      expect { MainService.main }.to output(/delectus aut autem/).to_stdout
      expect { MainService.main }.to output(/quis ut nam facilis et officia qui/).to_stdout
    end
  end
end

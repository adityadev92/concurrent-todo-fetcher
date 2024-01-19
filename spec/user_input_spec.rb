require 'helper'

RSpec.describe UserInput do
  describe '.get_num_todos' do
    context 'when user enters a valid number' do
      it 'returns the entered number' do
        allow(UserInput).to receive(:gets).and_return("5\n")
        expect(UserInput.get_num_todos).to eq(5)
      end
    end

    context 'when user enters an empty string' do
      it 'returns the default value (20)' do
        allow(UserInput).to receive(:gets).and_return("\n")

        expect(UserInput.get_num_todos).to eq(20)
      end
    end
  end
end

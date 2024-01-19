class UserInput
  def self.get_num_todos
    print 'Enter the number of data you want to fetch (default is 20): '
    input = gets.chomp
    input.empty? ? 20 : input.to_i
  end
end

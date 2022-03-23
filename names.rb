class InvalidNameError < StandardError
  def message
    'Name must not be empty'
  end
end

module Names
  def self.get_name
    print 'Enter your name: '
    name = gets.strip
    print 'Enter your age: '
    age = gets.strip
    raise(InvalidNameError) if name.empty?

    return name, age
  end
  def self.greet(name)
    puts "Hello there, #{name} !"
  end
end

# begin
#   foo = get_name
#   puts "The name is #{foo}"
# rescue InvalidNameError => e
#     puts e.message
#     retry
# end

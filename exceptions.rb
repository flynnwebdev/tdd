def divide(num1, num2)
#   raise(TypeError, 'Both values must be integers') unless num1.is_a?(Integer) && num2.is_a?(Integer)

  puts "#{num1} divided by #{num2} is #{Integer(num1) / Integer(num2)}"
end

begin
  puts 'Enter two integers:'
  num1 = gets.chomp
  num2 = gets.chomp
  divide(num1, num2)
rescue ZeroDivisionError => e
  puts 'Cannot divide by zero!'
  retry
rescue Interrupt
  puts 'You ended the program'
rescue ArgumentError => e
  puts e.message
  retry
rescue StandardError
  puts 'An unexpected error occured'
end

puts 'Goodbye!'

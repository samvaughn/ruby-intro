puts 'Enter your first number'
  num1 = gets.chomp

puts 'Enter your operator (+, -, *, /)'
operator = gets.chomp

puts 'Enter your second number'
  num2 = gets.chomp

  if operator == '+'
    puts num1.to_i + num2.to_i

  elsif operator == '-'
    puts num1.to_i - num2.to_i

  elsif operator == '*'
    puts num1.to_i * num2.to_i

  else
    puts num1.to_f / num2.to_f
  end
  
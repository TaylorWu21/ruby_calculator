require 'pry'

@user_input = []
@menu = ['+', '-', '*', '/', '^']

def first_input
  puts "What is the first number?"
  @user_input << gets.strip.to_i
end

def second_input
  puts "What is the second number"
  @user_input << gets.strip.to_i
end

def add
  add = Proc.new { |num1, num2| puts  num1 + num2 }
  addition = add.call(@user_input[0], @user_input[1])
  puts addition
end

def subtract
  subtract = Proc.new { |num1, num2| puts num1 - num2 }
  subtraction = @subtract.call(@user_input[0], @user_input[1])
  puts subtraction
end

def multiply
  multiply = Proc.new { |num1, num2| puts num1 * num2 }
  multiplication = @multiply.call(@user_input[0], @user_input[1])
  puts multiplication
end

def divide
  divide = Proc.new { |num1, num2| puts num1 / num2 }
  division = @divide.call(@user_input[0], @user_input[1])
  if @user_input == 0
    puts "Cannot divide by 0"
  else
    puts division
  end
end

def square
  square = Proc.new { |num1, num2| puts num1 ** num2 }
  squaring = @square.call(@user_input[0], @user_input[1])
  puts squaring
end

def intro
  puts "---------- Ruby Calculator ----------"
  first_input
  @menu.each_with_index { |intro, i| puts "#{i + 1}: " + intro}
  puts "Choose an operator: "
  operator_input = gets.strip.to_i
  second_input
  puts "Calculating..."
  case operator_input
  when 1
    add
  when 2
    subtract
  when 3
    multiply
  when 4
    divide
  when 5
    square
  end
end

def delete_array
  @user_input.clear
end

while true
  intro
  delete_array
  puts "To quit press q or press enter to continue"
  exit(0) if gets.strip == 'q'
end

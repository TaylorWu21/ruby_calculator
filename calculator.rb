require 'pry'
# create / edit a file
# stage the file - git add
# make a commit
# push to a github repository
@history = []

def first
  puts "Enter the first number:"
  @first_number = gets.strip.to_f
  if @first_number == 0
    puts "Invalid number"
    first
  end
end

def second
  puts "Enter the second number:"
  @second_number = gets.strip.to_f
end

def operator
  puts "Which operation would you like to use?"
  puts "1) +"
  puts "2) -"
  puts "3) *"
  puts "4) /"
  puts "5) ^"
  @user_operation = gets.strip.to_i
end

# def error_checking(/^[-+]?\d*\.?\d+$/)
#   @first_number
# end

def calculate
  print "The Answer is: "
  case @user_operation
  when 1
    @answer = @first_number + @second_number
    puts "The answer is: #{@answer}"
  when 2
    @answer = @first_number - @second_number
    puts "The answer is: #{@answer}"
  when 3
    @answer = @first_number * @second_number
    puts "The answer is: #{@answer}"
  when 4
    if @second_number == 0
      puts "Cannot divide by 0"
    else 
      @answer = @first_number / @second_number
      puts "The answer is: #{@answer}"
    end
  when 5
    @answer = @first_number ** @second_number
    puts "The answer is: #{@answer}"
  else
    puts "I only support +, -, *, /, ^"
  end
end

def history_option
  @first_number = @answer
  operator
  second
  calculate
  history_call
end

def history_call
  puts "Would you like to use the previous answer? (y/n) or quit with q"
  user_history_input = gets.strip.downcase
  if user_history_input == 'n'
    play
  elsif user_history_input == 'q'
    exit(0)
  else
    history_option
  end
end

def play
  puts "--------Calculator--------"
  first
  operator
  second
  calculate
  history_call
end

play

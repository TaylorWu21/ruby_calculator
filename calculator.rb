# create / edit a file
# stage the file - git add
# make a commit
# push to a github repository
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

def calculate
  print "The Answer is: "
  case @user_operation
  when 1
    puts @first_number + @second_number
  when 2
    puts @first_number - @second_number
  when 3
    puts @first_number * @second_number
  when 4
    if @second_number == 0
      puts "Cannot divide by 0"
    else 
      puts @first_number / @second_number
    end
  when 5
    puts @first_number ** @second_number
  else
    puts "I only support +, -, *, /, ^"
  end
end

while true
  puts "--------Calculator--------"
  first
  operator
  second
  calculate
  puts "To quit press q or press enter to continue"
  exit(0) if gets.strip == 'q'
end

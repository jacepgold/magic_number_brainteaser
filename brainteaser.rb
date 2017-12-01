require 'pry'
require 'humanize'
# Check for if user enters letters

def error_handle(user_input)
  to_check = user_input
  # TODO
  if to_check.to_i.is_a? Numeric
    to_check = to_check.to_i.abs
    puts 'Numeric entered.'
    return to_check
  else
    puts 'Invalid input. Numeric numbers only. Please try again.'
    magic_four
  end
end


# The Game
def game(user_input)
  user_in = user_input
  current_num = 0
  current_num_text = ''
  new_num = 0
  new_num_text = ''

  # current_num = user_in
  # current_num_text = user_in.humanize
  
  while current_num != 4
    puts "#{current_num} is #{current_num_text}\n"
    new_num_text = current_num.humanize
    new_num = current_num_text.length
    # binding.pry
  end
  puts 'And 4 is the Magic Number.'

  magic_four
end


def magic_four()
  puts "Enter a number, or type 'exit' to exit "
  print '> '
  user_in = $stdin.gets.strip

  # Error Handling
  if user_in == 'exit'
    exit
  else
    if user_in.to_i.is_a? Numeric
      user_in = user_in.to_i.abs
      puts 'Numeric entered.'
      game(user_in)
    else
        puts 'Invalid input. Numeric numbers only. Please try again.'
        magic_four
    end
  end
  magic_four
end

magic_four 
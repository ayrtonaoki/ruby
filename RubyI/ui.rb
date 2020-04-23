def welcome
  system("clear")
  puts "   _______  ___   _______  _______  _______  ______                 "
  puts "  |  _    ||   | |       ||       ||       ||    _ |                "
  puts "  | |_|   ||   | |    ___||    ___||    ___||   | ||                "
  puts "  |       ||   | |   | __ |   | __ |   |___ |   |_||_               "
  puts "  |  _   | |   | |   ||  ||   ||  ||    ___||    __  |              "
  puts "  | |_|   ||   | |   |_| ||   |_| ||   |___ |   |  | |              "
  puts "  |_______||___| |_______||_______||_______||___|  |_|              "
  puts "   _______  ______                                                  "
  puts "  |       ||    _ |                                                 "
  puts "  |   _   ||   | ||                                                 "
  puts "  |  | |  ||   |_||_                                                "
  puts "  |  |_|  ||    __  |                                               "
  puts "  |       ||   |  | |                                               "
  puts "  |_______||___|  |_|                                               "
  puts "   _______  __   __  _______  ___      ___      _______  ______     "
  puts "  |       ||  |_|  ||   _   ||   |    |   |    |       ||    _ |    "
  puts "  |  _____||       ||  |_|  ||   |    |   |    |    ___||   | ||    "
  puts "  | |_____ |       ||       ||   |    |   |    |   |___ |   |_||_   "
  puts "  |_____  ||       ||       ||   |___ |   |___ |    ___||    __  |  "
  puts "   _____| || ||_|| ||   _   ||       ||       ||   |___ |   |  | |  "
  puts "  |_______||_|   |_||__| |__||_______||_______||_______||___|  |_|  "
  puts "   _______  __   __  _______    _______  _______  __   __  _______  "
  puts "  |       ||  | |  ||       |  |       ||   _   ||  |_|  ||       | "
  puts "  |_     _||  |_|  ||    ___|  |    ___||  |_|  ||       ||    ___| "
  puts "    |   |  |       ||   |___   |   | __ |       ||       ||   |___  "
  puts "    |   |  |       ||    ___|  |   ||  ||       ||       ||    ___| "
  puts "    |   |  |   _   ||   |___   |   |_| ||   _   || ||_|| ||   |___  "
  puts "    |___|  |__| |__||_______|  |_______||__| |__||_|   |_||_______| "
  puts "\n"
  puts "\n"
  sleep 2
  puts "\n"
  puts "\n"
  print "                       Press ENTER to start"
  gets
  sleep 0.5
  system("clear")
  print "Enter your name: "
  name = gets
  puts "\n"
  puts "Let's start the game, #{name}"
  puts "\n"
  name
end

def select_game_difficulty()
  puts "Select game difficulty:"
  puts "(1) - Easy"
  puts "(2) - Normal"
  puts "(3) - Hard"
  puts "\n"
  difficulty = gets.to_i
  puts "\n"

  loop do
    if difficulty.between?(1, 3)
      break
    else
      puts "Insert a number between 1 and 3"
      difficulty = select_game_difficulty()
    end
  end

  case difficulty
  when 1
    puts "For real? Ok..."
  when 2
    puts "Hmm, that's gonna be interesting..."
  when 3
    puts "HAHA! Good luck!"
  end
  sleep 1
  difficulty
end

def pick_secret_number(limit_number)
  puts "\n"
  puts "Picking random secret number!"
  print "Loading "
  sleep 0.5
  print "["
  for i in 1..40
    print "#"
    sleep 0.1
  end
  print "]"
  sleep 1
  system("clear")
  secret_number = rand(limit_number)
end

def choose_number(attempt, attempt_limit, numbers_tried, difficulty_number)
  puts "\n"
  puts "Choose a number between 1 and " + difficulty_number.to_s + " - Attempt " +
  "#{attempt.to_s} of  #{attempt_limit.to_s}"
  puts "Attemps so far: #{numbers_tried.to_s}"
  puts "\n"
  shot = gets.to_i
end

def show_check_message(value)
  puts value
end

def show_number_difference(value)
  puts "The secret number is #{value}!"
end

def show_already_tried_message()
  puts "\n"
  puts "Number already tried!"
end

def show_only_numbers_message()
  puts "\n"
  puts "Only numbers are accept"
end

def show_result_message(points, secret_number)
  puts "\n"
  puts "You scored " + points.to_s + " points!"
  puts "The secret number was: " + secret_number.to_s
end

def show_play_again_message()
  puts "\n"
  puts "Play again? (Y/N)"
  answer = gets.strip
  system("clear")
  answer.upcase == "N"
end

def show_bye_message()
  system("clear")
  puts "Thanks for playing!"
  sleep 3
end

def show_rank_message()
  puts "\nRank of players"
end
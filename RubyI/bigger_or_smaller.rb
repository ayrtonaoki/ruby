def welcome
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
  puts "What's your name?"
  name = gets
  puts "Let's start the game, #{name}"
end

def choose_number(attempt, attempt_limit, numbers_tried)
  puts "\n"
  puts "Choose a number between 1 and 100 - Attempt " +
    "#{attempt.to_s} of  #{attempt_limit.to_s}"
  puts "Attemps so far: #{numbers_tried.to_s}"
  shot = gets
  shot.to_i
end

def check_shot(shot, secret_mumber)
  puts "\n"
  if shot == secret_mumber
    puts "Hit :)"
    return true
  end

  puts "Miss :("
  if secret_mumber > shot
    puts "The secret number is bigger!"
  else
    puts "The secret number is smaller!"
  end
  false
end

welcome

secret_mumber = rand(100)
attempt_limit = 5
numbers_tried = []
points = 100

for attempt in 1..attempt_limit do
  shot = choose_number attempt, attempt_limit, numbers_tried
  numbers_tried << shot
  break if check_shot(shot, secret_mumber)
  points -= 20
end

puts "\n"
puts "You scored " + points.to_s + " points!"
puts "The secret number was: " + secret_mumber.to_s

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
  puts "\n"
  sleep 2
  print "                       Press ENTER to start!"
  gets
  sleep 0.5
  system("clear")
  print "Enter your name: "
  name = gets
  puts "\n"
  puts "Let's start the game, #{name}"
  puts "\n"
end

def select_game_difficulty
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
      difficulty = select_game_difficulty
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
  shot = gets
  shot.to_i
end

def check_shot(shot, secret_number)
  puts "\n"
  if shot == secret_number
    puts "Hit :)"
    return true
  end

  puts "Miss :("
  if secret_number > shot
    puts "The secret number is bigger!"
  else
    puts "The secret number is smaller!"
  end
  false
end

def play_game(attempt_limit, difficulty, difficulty_number, secret_number)
  points = 1000
  numbers_tried = []
  for attempt in 1..attempt_limit do
    case difficulty
    when 1
      shot = choose_number attempt, attempt_limit, numbers_tried, difficulty_number
      numbers_tried << shot
      break if check_shot(shot, secret_number)
    when 2
      shot = choose_number attempt, attempt_limit, numbers_tried, difficulty_number
      numbers_tried << shot
      break if check_shot(shot, secret_number)
    when 3
      shot = choose_number attempt, attempt_limit, numbers_tried, difficulty_number
      numbers_tried << shot
      break if check_shot(shot, secret_number)
    end
    case difficulty
    when 1
      points -= 100 + (secret_number - shot).abs
    when 2
      points -= 66 + (secret_number - shot).abs
    when 3
      points -= 33 + (secret_number - shot).abs
    end
  end
  puts "\n"
  puts "You scored " + points.to_s + " points!"
  puts "The secret number was: " + secret_number.to_s
end

def play_again(answer)
  answer.upcase == "Y"
end

attempt_limit = 5
easy_difficulty_number = 20
normal_difficulty_number = 50
hard_difficulty_number = 100

welcome

loop do
  difficulty = select_game_difficulty
  case difficulty
  when 1
    secret_number = pick_secret_number easy_difficulty_number
    play_game attempt_limit, difficulty, easy_difficulty_number, secret_number
  when 2
    secret_number = pick_secret_number normal_difficulty_number
    play_game attempt_limit, difficulty, normal_difficulty_number, secret_number
  when 3
    secret_number = pick_secret_number hard_difficulty_number
    play_game attempt_limit, difficulty, hard_difficulty_number, secret_number
  end
  puts "\n"
  puts "Play again? (Y/N)"
  answer = gets.strip
  system("clear")
  break if answer.upcase == "N"
end

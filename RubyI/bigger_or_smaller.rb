def welcome
  puts "Welcome to Bigger or Smaller - The Game"
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

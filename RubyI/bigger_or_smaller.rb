puts "Welcome to Bigger or Smaller - The Game"
puts "\n"
puts "What's your name?"
name = gets

puts "Let's start the game, " + name

secret_mumber = 22
attempt_limit = 5

for attempt in 1..attempt_limit do
  puts "\n"
  puts "Choose a number between 1 and 100 - Attempt " + attempt.to_s + ":"
  shot = gets
  puts "\n"
  if shot.to_i == secret_mumber
    puts "Hit :)"
    break
  else
    puts "Miss :("
    if secret_mumber > shot.to_i
      puts "The secret number is bigger!"
    else
      puts "The secret number is smaller!"
    end
  end
end
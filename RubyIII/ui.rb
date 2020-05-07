def welcome
  system("clear")
  puts "      ▄████  ██░ ██  ▒█████    ██████ ▄▄▄█████▓      "
  puts "     ██▒ ▀█▒▓██░ ██▒▒██▒  ██▒▒██    ▒ ▓  ██▒ ▓▒      "
  puts "    ▒██░▄▄▄░▒██▀▀██░▒██░  ██▒░ ▓██▄   ▒ ▓██░ ▒░      "
  puts "    ░▓█  ██▓░▓█ ░██ ▒██   ██░  ▒   ██▒░ ▓██▓ ░       "
  puts "    ░▒▓███▀▒░▓█▒░██▓░ ████▓▒░▒██████▒▒  ▒██▒ ░       "
  puts "     ░▒   ▒  ▒ ░░▒░▒░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░  ▒ ░░         "
  puts "      ░   ░  ▒ ░▒░ ░  ░ ▒ ▒░ ░ ░▒  ░ ░    ░          "
  puts "      ░   ░  ░  ░░ ░░ ░ ░ ▒  ░  ░  ░    ░            "
  puts "          ░  ░  ░  ░    ░ ░        ░                 "
  puts "                                                     "
  puts " ██░ ██  █    ██  ███▄    █ ▄▄▄█████▓▓█████  ██▀███  "
  puts "▓██░ ██▒ ██  ▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒"
  puts "▒██▀▀██░▓██  ▒██░▓██  ▀█ ██▒▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒"
  puts "░▓█ ░██ ▓▓█  ░██░▓██▒  ▐▌██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  "
  puts "░▓█▒░██▓▒▒█████▓ ▒██░   ▓██░  ▒██▒ ░ ░▒████▒░██▓ ▒██▒"
  puts " ▒ ░░▒░▒░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒   ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░"
  puts " ▒ ░▒░ ░░░▒░ ░ ░ ░ ░░   ░ ▒░    ░     ░ ░  ░  ░▒ ░ ▒░"
  puts " ░  ░░ ░ ░░░ ░ ░    ░   ░ ░   ░         ░     ░░   ░ "
  puts " ░  ░  ░   ░              ░             ░  ░   ░     "

  sleep 3
  puts "\n\n\n\n"
  puts "               Press ENTER to start"
  gets
  system("clear")
  sleep 1
end

def choose_map
  for i in 1..3 do
    puts "\n(#{i})"
    puts read_map(i)
  end
  puts "\n"
  print "Choose your map: "
  map = gets.strip
  system("clear")
  print "Loading "
  sleep 0.5
  print "["
  for i in 1..40
    print ":"
    sleep 0.1
  end
  print "]"
  sleep 1
  system("clear")
  map
end

def play_again
  sleep 1
  puts "\nPlay again? (Y/N)"
  answer = gets.strip
  system "clear"
  answer.upcase == "Y"
end

def choose_player_movement
  puts "Make a move! (W = Up, S = Down, A = Left and D = Right"
  movement = gets.strip.upcase
end
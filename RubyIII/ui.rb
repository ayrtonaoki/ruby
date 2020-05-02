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
  puts "Choose your map:"
  puts "(1)"
  map1 = File.read "map1.txt"
  puts map1.split("\n")
  puts "\n"
  puts "(2)"
  map2 = File.read "map2.txt"
  puts map2.split("\n")
  puts "\n"
  puts "(3)"
  map3 = File.read "map3.txt"
  puts map3.split("\n")
  puts "\n"
  map = gets.strip
end

def play_again
  puts "Play again? (Y/N)"
  answer = gets.strip
  system "clear"
  answer.upcase == "Y"
end
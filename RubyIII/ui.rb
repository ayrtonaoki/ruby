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
  for i in 1..3 do
    puts "\n(#{i})"
    puts read_map(i)
  end
  puts "\n"
  map = gets.strip
end

def play_again
  puts "Play again? (Y/N)"
  answer = gets.strip
  system "clear"
  answer.upcase == "Y"
end
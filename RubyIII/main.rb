require_relative "ui"

welcome

loop do
  map_number = choose_map
  system "clear"
  file = File.read "map#{map_number}.txt"
  puts file.split("\n")
  break if !play_again
end
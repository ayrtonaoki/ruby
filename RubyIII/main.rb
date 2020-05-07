require_relative "ui"
require_relative "functions"

# welcome

loop do
  system "clear"
  puts read_map(choose_map)
  break if !play_again
end
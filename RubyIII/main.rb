require_relative "ui"
require_relative "functions"

# welcome

loop do
  system "clear"
  map = read_map(choose_map)
  puts map
  while true
    puts "\n"
    player_movement = choose_player_movement
    player_spot = find_player_spot(map)
    map[player_spot[0]][player_spot[1]] = " "
    set_player_position(player_movement, player_spot)
    map[player_spot[0]][player_spot[1]] = "H"
    puts map
  end
  break if !play_again
end
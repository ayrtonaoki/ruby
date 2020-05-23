require_relative "ui"
require_relative "functions"

# welcome

loop do
  system "clear"
  map = read_map(choose_map)
  while true
    puts map
    puts "\n"
    player_position = find_player(map)
    new_player_position = set_player_position(player_movement, player_position)
    next if !position_is_valid?(map, new_player_position)
    map[player_position[0]][player_position[1]] = " "
    map[new_player_position[0]][new_player_position[1]] = "H"
  end
  break if !play_again
end
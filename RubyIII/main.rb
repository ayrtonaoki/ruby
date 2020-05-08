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
    player_position = find_player(map)
    new_player_position = set_player_position(player_movement, player_position)
    if map[new_player_position[0]][new_player_position[1]] == "#"
      puts map
      next
    end
    map[player_position[0]][player_position[1]] = " "
    map[new_player_position[0]][new_player_position[1]] = "H"
    puts map
  end
  break if !play_again
end
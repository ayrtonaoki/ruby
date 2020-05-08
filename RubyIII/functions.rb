def read_map(map_number)
  file = File.read "maps/map#{map_number}.txt"
  file.split("\n")
end

def find_player(map)
  map.each_with_index do |map_row, row_index|
    player_column = map_row.index "H"
    if player_column
      return row_index, player_column
    end
  end
end

def set_player_position(player_movement, player_spot)
  player_spot = player_spot.dup
  case player_movement
  when "W"
    player_spot[0] -= 1
  when "S"
    player_spot[0] += 1
  when "A"
    player_spot[1] -= 1
  when "D"
    player_spot[1] += 1
  end
  player_spot
end
def read_map(map_number)
  file = File.read "map#{map_number}.txt"
  file.split("\n")
end

def find_player_spot(map)
  map.each_with_index do |map_row, row_index|
    player_column = map_row.index "H"
    if player_column
      return row_index, player_column
    end
  end
end
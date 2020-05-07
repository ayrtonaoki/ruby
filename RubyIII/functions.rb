def read_map(map_number)
  file = File.read "map#{map_number}.txt"
  file.split("\n")
end
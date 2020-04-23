def check_shot(shot, secret_number)
  sleep 1
  system("clear")
  puts "\n"
  if shot == secret_number
    show_check_message("Hit!")
    return true
  end
  show_check_message("Miss!")
  if secret_number > shot
    show_number_difference("bigger")
  else
    show_number_difference("smaller")
  end
  false
end

def number_validation(shot, numbers_tried, attempt, secret_number)
  if shot > 0 && shot != ""
    if !numbers_tried.include? shot
      numbers_tried << shot
      attempt += 1
    else
      sleep 1
      show_already_tried_message()
      return false
    end
    return check_shot(shot, secret_number)
  else
    sleep 1
    show_only_numbers_message()
    return false
  end
end

def save_points(name, points)
  content = File.read("rank.txt")
  content = content.split
  puts content[0]
  file = File.open("rank.txt", "a")
  file.puts "#{points} #{name}"
  file.close
end

def play_game(name, attempt_limit, difficulty, difficulty_number, secret_number)
  points = 1000
  numbers_tried = []
  attempt = 1

  while attempt <= attempt_limit do
    case difficulty
    when 1
      shot = choose_number(attempt, attempt_limit, numbers_tried, difficulty_number)
      break if number_validation(shot, numbers_tried, attempt, secret_number)
    when 2
      shot = choose_number(attempt, attempt_limit, numbers_tried, difficulty_number)
      break if number_validation(shot, numbers_tried, attempt, secret_number)
    when 3
      shot = choose_number(attempt, attempt_limit, numbers_tried, difficulty_number)
      break if number_validation(shot, numbers_tried, attempt, secret_number)
    end

    case difficulty
    when 1
      points -= 100 + (secret_number - shot).abs
    when 2
      points -= 66 + (secret_number - shot).abs
    when 3
      points -= 33 + (secret_number - shot).abs
    end
  end
  show_result_message(points, secret_number)
  save_points(name, points)
end

def show_rank
  show_rank_message()
  file = File.read("rank.txt")
  puts file
end
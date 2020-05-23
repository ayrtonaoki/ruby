require_relative("ui")
require_relative("functions")

attempt_limit = 5
easy_difficulty_number = 20
normal_difficulty_number = 50
hard_difficulty_number = 100

name = welcome

loop do
  difficulty = select_game_difficulty()
  case difficulty
  when 1
    secret_number = pick_secret_number(easy_difficulty_number)
    play_game(name, attempt_limit, difficulty, easy_difficulty_number, secret_number)
  when 2
    secret_number = pick_secret_number(normal_difficulty_number)
    play_game(name, attempt_limit, difficulty, normal_difficulty_number, secret_number)
  when 3
    secret_number = pick_secret_number(hard_difficulty_number)
    play_game(name, attempt_limit, difficulty, hard_difficulty_number, secret_number)
  end
  show_rank()
  break if show_play_again_message()
end

show_bye_message()

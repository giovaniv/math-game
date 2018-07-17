
def intro
  puts "=========================================="
  puts "=========================================="
  puts "============= RUBY MATH GAME ============="
  puts "=========================================="
  puts "By Giovani Raymundo de Vasconcelos        "
  puts "In July 16, 2018 at Vancouver             "
  puts "==========================================\n"
end


def start_player(id)
  print "Player #{id} name ===> "
  player_name = gets.chomp
  my_obj = Player.new(id,player_name)
  return my_obj
end

def start_game(player_one, player_two)
  my_game = Game.new
  return my_game
end

def random_quiz(id, player_id)
  numbers = [0,1,2,3,4,5,6,7,8,9]
  num1 = numbers.sample
  num2 = numbers.sample
  operator = ['+','-','*','**']
  ops = operator.sample
  question = "#{num1} #{ops} #{num2}"
  result = eval(question)
  my_quiz = Quiz.new(id, question, result, player_id)
  return my_quiz
end

def show_score(p1,p2)
  puts "#{p1.name}: #{p1.curr_life}/#{p1.total_life} vs #{p2.name}: #{p2.curr_life}/#{p2.total_life}"
end

def finish_game(p1,p2)
  if p1.curr_life < 1
    puts "Player #{p2.name} wins with a score of #{p2.curr_life}/#{p2.total_life}"
  else
    puts "Player #{p1.name} wins with a score of #{p1.curr_life}/#{p1.total_life}"
  end
end

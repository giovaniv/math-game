# Ruby Math Game 1.0
# It requires the other files/gems that it needs
# Created by Giovani Vasconcelos - July 16, 2018

require 'pry'
require './player'
require './game'
require './quiz'
require './functions'

qid = 0;
on_more_question = true;

intro
p1 = start_player(1)
p2 = start_player(2)
game = start_game(p1,p2)
while game.status
  while on_more_question
    qid = qid + 1
    if game.turn == p1.id
      quiz = random_quiz(qid, p1.id)
      puts "----- NEW TURN ---------------"
      puts "For #{p1.name}..."
      puts "------------------------------"
    else
      quiz = random_quiz(qid, p2.id)
      puts "----- NEW TURN ---------------"
      puts "For #{p2.name}..."
      puts "------------------------------"
    end
    print "What's the result of ---> #{quiz.question} ? "
    resp = gets.chomp.to_i
    right_resp = quiz.result.to_i
    if right_resp == resp
      puts "YES! You're correct!"
    else
      puts "OOooopppsss! You lost 1 life..."
      if game.turn == p1.id
        p1.curr_life = p1.curr_life - 1
      else
        p2.curr_life = p2.curr_life - 1
      end
    end
    show_score(p1,p2)
    if ( p1.curr_life < 1 || p2.curr_life < 1)
      on_more_question = false
    else
      if game.turn == p1.id
        game.turn = p2.id
      else
        game.turn = p1.id
      end
    end
  end
  finish_game(p1,p2)
  game.status = false
end



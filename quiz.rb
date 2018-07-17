
class Quiz
  attr_accessor :id, :question, :result, :player_id
  def initialize(id, question, result, player_id)
    @id = id
    @question = question
    @result = result
    @player_id = player_id
  end
end

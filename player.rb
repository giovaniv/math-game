
class Player
  attr_accessor :id, :name, :total_life, :curr_life
  def initialize(id, name)
    @id = id
    @name = name
    @total_life = 3
    @curr_life = @total_life
  end
end
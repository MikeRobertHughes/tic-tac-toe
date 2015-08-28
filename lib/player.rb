class Player

  attr_accessor :name, :squarenum

  def initialize(name="Player One")
    @name = name
    @squarenum = "-1"
  end

  def choose_square(num)
    @squarenum = num
  end
end

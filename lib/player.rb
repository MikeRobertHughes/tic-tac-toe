class Player

  attr_accessor :name, :square_num

  def initialize(name="Player One")
    @name = name
    @square_num = "-1"
  end

  def square_choice(num)
    @square_num = num
  end
end

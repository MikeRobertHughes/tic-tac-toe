class Board

  attr_accessor :board

  def initialize
    @board = [["1", "2", "3"],["4", "5", "6"],["7", "8", "9"]]
  end

  def win_horiz?
    for i in 0..2
      if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
        puts "Congrats! #{@board[i][0]}'s wins horizontally!"
        break
      end
    end
  end

  def win_vert?
    for i in 0..2
      if @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
        puts "Congrats! #{@board[0][i]}'s wins vertically!"
        break
      end
    end
  end

  def win_diag?
    if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      puts "Congrats! #{@board[1][1]}'s wins diagonally!"
    elsif @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      puts "Congrats! #{@board[1][1]}'s wins diagonally!"
    end
  end

  def board_full?
    x = 0
    for i in 0..2
      for e in 0..2
        if @board[i][e] != "X" && @board[i][e] != "O"
          # puts "DEBUG: Value is #{@board[i][e]}."
          x += 1
          # puts "DEBUG: 'x' variable is #{x}"
        end
      end
    end
    if x != 0
      puts "Board is not full"
    else
      puts "Board is full. It's a draw!"
    end
  end

  def build_board
    system('clear')
    @game_board = "\nXOXOXO Tic - Tac - Toe XOXOXO \n\n"
    for i in 0..2
      @game_board += "\t#{@board[i]} \n"
    end
    @game_board += "\n"
  end

  def put_x(x)
    x = x.to_i
    if x <= 0
      puts "That square doesn't exist. Please reset your choice."
    elsif x == @board[0][0].to_i
      @board[0][x - 1] = "X"
    elsif x == @board[0][1].to_i
      @board[0][x - 1] = "X"
    elsif x == @board[0][2].to_i
      @board[0][x - 1] = "X"
    elsif x == @board[1][0].to_i
      @board[1][x - 4] = "X"
    elsif x == @board[1][1].to_i
      @board[1][x - 4] = "X"
    elsif x == @board[1][2].to_i
      @board[1][x - 4] = "X"
    elsif x == @board[2][0].to_i
      @board[2][x - 7] = "X"
    elsif x == @board[2][1].to_i
      @board[2][x - 7] = "X"
    elsif x == @board[2][2].to_i
      @board[2][x - 7] = "X"
    else
      puts "That square is taken, please choose again."
    end
  end

  def put_o(o)
    o = o.to_i
    if o <= 0
      puts "That square doesn't exist. Please reset your choice."
    elsif o == @board[0][0].to_i
      @board[0][o - 1] = "O"
    elsif o == @board[0][1].to_i
      @board[0][o - 1] = "O"
    elsif o == @board[0][2].to_i
      @board[0][o - 1] = "O"
    elsif o == @board[1][0].to_i
      @board[1][o - 4] = "O"
    elsif o == @board[1][1].to_i
      @board[1][o - 4] = "O"
    elsif o == @board[1][2].to_i
      @board[1][o - 4] = "O"
    elsif o == @board[2][0].to_i
      @board[2][o - 7] = "O"
    elsif o == @board[2][1].to_i
      @board[2][o - 7] = "O"
    elsif o == @board[2][2].to_i
      @board[2][o - 7] = "O"
    else
      puts "That square is taken, please choose again."
    end
  end
end

# board = Board.new

# # board.put_x("9")
# # board.put_o("8")
# # board.put_x("7")
# # board.put_o("6")
# # board.put_x("5")
# # board.put_x("4")
# # board.put_x("3")
# # board.put_x("2")
# # board.put_x("1")
# puts "#{board.build_board}"
# # puts "#{board.board_full?}"
# puts "#{board.win_horiz?}"
# puts "#{board.win_vert?}"
# puts "#{board.win_diag?}"

# player1 = Player.new("Mike")
# board.put_x(player1.choose_square("9"))
# puts "#{board.build_board}"










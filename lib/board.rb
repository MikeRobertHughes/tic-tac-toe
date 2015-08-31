require_relative 'player'

class Board

  attr_accessor :board

  def initialize
    @board = [["1", "2", "3"],["4", "5", "6"],["7", "8", "9"]]
    @one = @board[0][0]
    @two = @board[0][1]
    @three = @board[0][2]
    @four = @board[1][0]
    @five = @board[1][1]
    @six = @board[1][2]
    @seven = @board[2][0]
    @eight = @board[2][1]
    @nine = @board[2][2]
  end

  def access_value(choice)
    if choice == "1"
      @board[0][0]
    elsif choice == "2"
      @board[0][1]
    elsif choice == "3"
      @board[0][2]
    elsif choice == "4"
      @board[1][0]
    elsif choice == "5"
      @board[1][1]
    elsif choice == "6"
      @board[1][2]
    elsif choice == "7"
      @board[2][0]
    elsif choice == "8"
      @board[2][1]
    elsif choice == "9"
      @board[2][2]
    end
  end

  def square_taken(square_num, current_board )
    square_took = false
    if square_num == "1" && ( current_board == "X" || current_board  == "O" )
      square_took = true
    elsif square_num == "2" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "3" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "4" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "5" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "6" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "7" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "8" && ( current_board == "X" || current_board == "O" )
      square_took = true
    elsif square_num == "9" && ( current_board == "X" || current_board == "O" )
      square_took = true
    else
      square_took = false
    end
    square_took
  end

    def exists(square_num)
    exists = false
    if square_num == "1"
      exists = true
    elsif square_num == "2"
      exists = true
    elsif square_num == "3"
      exists = true
    elsif square_num == "4"
      exists = true
    elsif square_num == "5"
      exists = true
    elsif square_num == "6"
      exists = true
    elsif square_num == "7"
      exists = true
    elsif square_num == "8"
      exists = true
    elsif square_num == "9"
      exists = true
    end
    exists
  end

  def win_horiz?
    did_win = false
    3.times do |i|
      if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
        puts "Congrats! #{@board[i][0]}'s win horizontally!"
        did_win = true
        break
      end
    end
    did_win
  end

  def win_vert?
    did_win = false
    3.times do |i|
      if @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
        puts "Congrats! #{@board[0][i]}'s win vertically!"
        did_win = true
        break
      end
    end
    did_win
  end

  def win_diag?
    did_win = false
    if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      puts "Congrats! #{@board[1][1]}'s win diagonally!"
      did_win = true
    elsif @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      puts "Congrats! #{@board[1][1]}'s win diagonally!"
      did_win = true
    end
    did_win
  end

  def is_board_full?
    x = 0
    board_full = false
    3.times do |i|
      3.times do |e|
        if @board[i][e] != "X" && @board[i][e] != "O"
          # puts "DEBUG: Value is #{@board[i][e]}."
          x += 1
          # puts "DEBUG: 'x' variable is #{x}"
        end
      end
    end
    if x == 0
      puts "It's a draw!"
      board_full = true
    end
    board_full
  end

  def build_board
    @game_board = "\n" #"\nXOXOXO Tic - Tac - Toe XOXOXO \n\n"
    3.times do |i|
      @game_board += "\t#{@board[i]} \n"
    end
    @game_board += "\n"
  end

  def put_x(x)
    x = x.to_i
    if x <= 0 || x > 9
      puts "That square doesn't exist."
    elsif x == @one.to_i
      @board[0][x - 1] = "X"
    elsif x == @two.to_i
      @board[0][x - 1] = "X"
    elsif x == @three.to_i
      @board[0][x - 1] = "X"
    elsif x == @four.to_i
      @board[1][x - 4] = "X"
    elsif x == @five.to_i
      @board[1][x - 4] = "X"
    elsif x == @six.to_i
      @board[1][x - 4] = "X"
    elsif x == @seven.to_i
      @board[2][x - 7] = "X"
    elsif x == @eight.to_i
      @board[2][x - 7] = "X"
    elsif x == @nine.to_i
      @board[2][x - 7] = "X"
    end
  end

  def game_over?
    if self.win_horiz? || self.win_diag? || self.win_vert? || self.is_board_full?
      true
    else
      false
    end
  end

  def put_o(o)
    o = o.to_i
    if o <= 0
      puts "That square doesn't exist."
      false
    elsif o == @one.to_i
      @board[0][o - 1] = "O"
    elsif o == @two.to_i
      @board[0][o - 1] = "O"
    elsif o == @three.to_i
      @board[0][o - 1] = "O"
    elsif o == @four.to_i
      @board[1][o - 4] = "O"
    elsif o == @five.to_i
      @board[1][o - 4] = "O"
    elsif o == @six.to_i
      @board[1][o - 4] = "O"
    elsif o == @seven.to_i
      @board[2][o - 7] = "O"
    elsif o == @eight.to_i
      @board[2][o - 7] = "O"
    elsif o == @nine.to_i
      @board[2][o - 7] = "O"
    else
      puts "That square is taken, please choose again."
      false
    end
  end
end

# game_board = Board.new
# player = Player.new

# game_board.put_x(player.square_choice("9"))
# game_board.put_o("8")
# game_board.put_o("7")
# game_board.put_x("6")
# game_board.put_o("5")
# game_board.put_o("4")
# game_board.put_o("3")
# game_board.put_o("2")
# game_board.put_o("1")

# puts "#{game_board.is_board_full?}"
# puts "#{game_board.win_horiz?}"
# puts "#{game_board.win_vert?}"
# puts "#{game_board.win_diag?}"

# player = Player.new("Mike")
# player.square_choice("9")

# puts "#{game_board.build_board}"

# puts "DEBUG: game_board[2][2]:                                                   #{game_board.board[2][2].inspect}"
# puts "DEBUG: game_board.access_value('9'):                                       #{game_board.access_value("9").inspect}"
# puts "DEBUG: player.square_num:                                                  #{player.square_num.inspect}"
# puts "DEBUG: square_taken?(player.square_num, game_board.access_value('9'))      #{game_board.square_taken(player.square_num, game_board.access_value('9'))}"









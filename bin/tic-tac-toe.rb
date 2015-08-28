require_relative '../lib/player'
require_relative '../lib/board'
# require_relative '../lib/game'

# puts "\nPssst..hey! You! Yes YOU! Wanna play a secret game all "
# puts "the sporty youth of today is playing?\n\n"
puts "Please press enter to begin or press q to exit...square."
while (leave = gets.chomp.downcase) != 'q'
  system('clear')
  puts "\nWelcome to the FUTURE. THIS. IS. TIC. TAC. TOE!!!!!!!!!!!!\n\n"
  # system('say We built this city. We built this city...on')
  system('clear')
  puts " ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
 ▀▀▀▀█░█▀▀▀▀  ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌
     ▐░▌          ▐░▌     ▐░▌          ▐░▌
     ▐░▌          ▐░▌     ▐░▌          ▐░▌
     ▐░▌          ▐░▌     ▐░▌          ▐░▌
     ▐░▌          ▐░▌     ▐░▌          ▐░▌
     ▐░▌          ▐░▌     ▐░▌           ▀
     ▐░▌      ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄  ▄
     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
      ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀
                                          \n\n"
  # system('sleep .2')
  # system('say Tic!')
  # system('sleep .2')
  system('clear')
  puts " ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
 ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░▌          ▐░▌
     ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░▌
     ▐░▌     ▐░░░░░░░░░░░▌▐░▌          ▐░▌
     ▐░▌     ▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░▌           ▀
     ▐░▌     ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄  ▄
     ▐░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌
      ▀       ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀
                                          \n\n"
  # system('sleep .2')
  # system('say Tac!')
  # system('sleep .2')
  system('clear')
  puts(" ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
 ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░▌          ▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌
     ▐░▌     ▐░▌       ▐░▌▐░▌           ▀
     ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄  ▄
     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
      ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀
                                          \n\n")
  # system('sleep .2')
  # system('say Toe-oooooo!')
  # system('sleep .2')
  system('clear')
  puts "Would you like to play the Computer? Press '1' now."
  puts "Or would you like a two-player game? Press '2' now."
  while (game_type = gets.chomp.downcase) != 'q'
    if game_type == '1'
      puts "You've chosen to play the computer!"
      puts "Please enter your name!"
      name = gets.chomp
      if name != ""
        player1 = Player.new(name)
      else
        player1 = Player.new
      end
      computer = Player.new("the \u00A1Computinator!")
      board = Board.new
      system('clear')
      puts "Hello #{player1.name}! Your challenger is: #{computer.name}"
      # system('sleep 2')
      # system('say Oh-la Senor #{player1.name}. Soy! el. computinator.')
      puts "You can go first. You will be X's."
      puts "#{board.build_board}"
      until board.is_board_full? || board.win_horiz? || board.win_vert? || board.win_diag?
        puts "Please choose your square."
        square = gets.chomp
        system('clear')
        player1_choice = player1.choose_square(square)
        board.put_x(player1_choice)
        puts "#{board.build_board}"
        puts "DEBUG: square_taken? #{board.square_taken?(player1_choice)}"
        # puts "DEBUG: is_board_full: #{!!board.is_board_full?}"
        # puts "DEBUG: win_vert: #{!!board.win_vert?}"
        # puts "DEBUG: win_horiz: #{!!board.win_horiz?}"
        # puts "DEBUG: win_diag: #{!!board.win_diag?}"
        break if square == "q"
      end
      puts "Congrats! You've won the all the TIC TACS~~!!"
    elsif game_type == '2'
      puts "You've chosen to play another player!"
    elsif game_type == 'q'
      exit
    else
      print "That's not an option. Please choose again : "
    end
    puts "Would you like to play the Computer? Press '1' now."
    puts "Or would you like a two-player game? Press '2' now."
    puts "If you'd like to exit, press 'q'."
  end
  exit
end

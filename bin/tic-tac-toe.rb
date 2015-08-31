require'pry'
require_relative '../lib/player'
require_relative '../lib/board'
# require_relative '../lib/game'

puts "\nPssst..hey! You! Yes YOU! Wanna play a secret game all "
puts "the sporty youth of today is playing?\n\n"
puts "Press enter to begin or press q to exit...square."
while (leave = gets.chomp.downcase) != 'q'
  system('clear')
  puts "\nWelcome to the FUTURE. THIS. IS. TIC. TAC. TOE!!!!!!!!!!!!\n\n"
  # system('say We built this city.')
  # system('sleep 1.5')
  # system('say We built this city...on')
  # system('clear')
  puts "   ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄
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
  # system('clear')
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
  puts "\nTo play the El \u00A1Computinator!: Press '1' now"
  puts "To play a two-player game: Press '2' now"
  puts "To exit, press 'q' never...\n"
  while (game_type = gets.chomp.downcase) != 'q'
    if game_type == '1'
      puts "You've chosen to play the computer!"
      puts "Please enter your name:"
      name = gets.chomp
      if name != ""
        player1 = Player.new(name)
      else
        player1 = Player.new
      end
      computer = Player.new("El \u00A1Computinator!")
      board = Board.new
      system('clear')
      puts "Hello #{player1.name}! Your challenger is #{computer.name}"
      system('sleep 2')
      # system("say Oh-la Senor #{player1.name}. Soy. . . the computinator.")
      puts "You will go first. You will be X's."
      puts "#{board.build_board}"
      until board.game_over?
        puts "Please choose your square."
        square = gets.chomp
        exit if square == "q"
        system('clear')
        player1.square_choice(square)
        if board.square_taken(player1.square_num, board.access_value(player1.square_num)) || !board.exists(player1.square_num)
          until !board.square_taken(player1.square_num, board.access_value(player1.square_num)) && board.exists(player1.square_num)
            system('clear')
            if board.square_taken(player1.square_num, board.access_value(player1.square_num))
              puts "That square already is taken, please enter a new number."
            else
              puts "That square doesn't exist!!!"
            end
            puts "#{board.build_board}"
            puts "Please enter a new value."
            square = gets.chomp
            exit if square == "q"
            player1.square_choice(square)
          end
          system('clear')
        end
        board.put_x(player1.square_num)
        puts "#{board.build_board}"
        if board.game_over?
          puts "#{player1.name} won all the Tic-Tac-Toe's!!!"
          system('sleep 3')
          system('clear')
          puts "Play again?"
          system('sleep 1.5')
          break
        end
        puts "It is now the computer's turn."
        system('sleep 1')
        computer.square_choice(rand(1..9).to_s)
        system('sleep 1')
        # puts "DEBUG: board.access_value(computer.square_num): #{board.access_value(computer.square_num)}"
        if board.square_taken(computer.square_num, board.access_value(computer.square_num))
          until !board.square_taken(computer.square_num, board.access_value(computer.square_num)) && board.exists(computer.square_num)
            computer.square_choice(rand(1..9).to_s)
          end
        end
        system('clear')
        puts "#{board.build_board}"
        puts "The computer chose #{computer.square_num}"
        system('sleep 1')
        board.put_o(computer.square_num)
        system('clear')
        puts "#{board.build_board}"
        if board.game_over?
          puts "El \u00A1Computinator! won all the Tic-Tac-Toe's!!!"
          system('sleep 3')
          system('clear')
          puts "Play again?"
          system('sleep 1.5')
          break
        end
        # puts "DEBUG: square_taken: #{board.square_taken(player1.square_num, board.access_value(player1.square_num))}"
        # puts "DEBUG: is_board_full: #{!!board.is_board_full?}"
        # puts "DEBUG: win_vert: #{!!board.win_vert?}"
        # puts "DEBUG: win_horiz: #{!!board.win_horiz?}"
        # puts "DEBUG: win_diag: #{!!board.win_diag?}"
      end
    elsif game_type == '2'
      puts "You've chosen to play another player!"
      system('clear')
      puts "Player 1: Please enter your name"
      name = gets.chomp
      if name != ""
        player1 = Player.new(name)
      else
        player1 = Player.new
      end
      system('clear')
      puts "Player 2: Please enter your name"
      name = gets.chomp
      if name != ""
        player2 = Player.new(name)
      else
        player2 = Player.new("Player 2")
      end
      board = Board.new
      system('clear')
      puts "Welcome to the Tic-Tac-Toe game of the century!\n\n"
      puts "XOXOXOXOXO #{player1.name} vs. #{player2.name} XOXOXOXOXO\n\n"
      puts "A coin is being flipped to see who goes first..."
      puts "#{board.build_board}"
      until board.game_over?
        puts "#{player1.name}: Please choose your square."
        square = gets.chomp
        exit if square == "q"
        system('clear')
        player1.square_choice(square)
        if board.square_taken(player1.square_num, board.access_value(player1.square_num)) || !board.exists(player1.square_num)
          until !board.square_taken(player1.square_num, board.access_value(player1.square_num)) && board.exists(player1.square_num)
            system('clear')
            if board.square_taken(player1.square_num, board.access_value(player1.square_num))
              puts "That square already is taken, please enter a new number."
            else
              puts "That square doesn't exist!!!"
            end
            puts "#{board.build_board}"
            puts "Please enter a new value."
            square = gets.chomp
            exit if square == "q"
            player1.square_choice(square)
          end
          system('clear')
        end
        board.put_x(player1.square_num)
        puts "#{board.build_board}"
        if board.game_over?
          puts "#{player1.name} won all the Tic-Tac-Toe's!!!"
          system('sleep 3')
          system('clear')
          puts "Play again?"
          system('sleep 1.5')
          break
        end
        puts "#{player2.name}: Please choose your square."
        square = gets.chomp
        exit if square == "q"
        system('clear')
        player2.square_choice(square)
        if board.square_taken(player2.square_num, board.access_value(player2.square_num)) || !board.exists(player2.square_num)
          until !board.square_taken(player2.square_num, board.access_value(player2.square_num)) && board.exists(player2.square_num)
            system('clear')
            if board.square_taken(player2.square_num, board.access_value(player2.square_num))
              puts "That square already is taken, please enter a new number."
            else
              puts "That square doesn't exist!!!"
            end
            puts "#{board.build_board}"
            puts "Please enter a new value."
            square = gets.chomp
            exit if square == "q"
            player2.square_choice(square)
          end
          system('clear')
        end
        system('clear')
        board.put_o(player2.square_num)
        puts "#{board.build_board}"
        if board.game_over?
          puts "#{player2.name} won all the Tic-Tac-Toe's!!!"
          system('sleep 3')
          system('clear')
          puts "Play again?"
          system('sleep 1.5')
          break
        end
        # puts "DEBUG: square_taken: #{board.square_taken(player1.square_num, board.access_value(player1.square_num))}"
        # puts "DEBUG: is_board_full: #{!!board.is_board_full?}"
        # puts "DEBUG: win_vert: #{!!board.win_vert?}"
        # puts "DEBUG: win_horiz: #{!!board.win_horiz?}"
        # puts "DEBUG: win_diag: #{!!board.win_diag?}"
      end
    elsif game_type == 'q'
      exit
    else
      system('clear')
      puts "That's not an option. Please choose again."
    end
    system('sleep 3')
    system('clear')
    puts "\nTo play the El \u00A1Computinator!: Press '1' now"
    puts "To play a two-player game: Press '2' now"
    puts "To exit, press 'q' never...\n"
  end
  exit
end































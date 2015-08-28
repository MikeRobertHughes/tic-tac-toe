require_relative '../lib/player'
require_relative '../lib/board'
# require_relative '../lib/game'

puts "\nPssst..hey! You! Yes YOU! Wanna play a secret game all "
puts "the sporty youth of today is playing?\n\n"
puts "Please press enter to begin or press q to exit...square."
while (leave = gets.chomp.downcase) != 'q'
  puts "\nWelcome to the FUTURE. THIS. IS. TIC. TAC. TOE!!!!!!!!!!!!\n\n"
  system('say We built this city. we built this city... on Tic. Tac. Toe-oooooo!')
  puts "Would you like to play the Computer? Press '1' now."
  puts "Or would you like a two-player game? Press '2' now."

  while (game_type = gets.chomp) != 'q'
    if game_type == '1'
      puts "You've chosen to play the computer!"
      puts "Please enter your name!"
      name = gets.chomp
      player1 = Player.new(name)
      computer = Player.new("the \u00A1Computinator!")
      puts "Hello #{player1.name}! Your challenger is the: #{computer.name}"
      system('sleep 2')
        system('say Oh-la Senor. Ehst-oi! el. computinator.')
      puts "You can go first."
      board = Board.new
      while !board.is_full || !board.win_horiz? || !board.win_vert? || !board.win_diag?
        board
    elsif game_type == '2'
      puts "You've chosen to play another player!"
    elsif game_type == 'q'
      exit
    else
      print "That's not an option. Please choose again : "
      game_type = gets.chomp
    end
  end
end

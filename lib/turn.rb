def turn (board)
  puts "please enter 1-9:"
  index = gets
  if valid_move? (board, index)
    move(board, index)
  else
    puts "that move is invalid, try another move!"
    turn (board)
  end
end

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  index.between?(0,8) && board[index] == " "
end

def move (board, index, player = "X")
  board[index] = player
end

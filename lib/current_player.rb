# Implements the current_player and turn_count methods in Ruby

# Takes the board state as an argument and determines the current turn number
def turn_count(board)
  turn = 0
  board.each do |position|
    if position == "X" || position == "O"
      turn += 1
    end
  end
  return turn
end

# Takes the board state as an argument and determines the current player
def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

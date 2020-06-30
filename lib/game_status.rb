# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [1,4,7], # First column
  [2,5,8], # Middle column
  [3,6,9], # Third column
  [1,5,9], # Diagonal down
  [3,5,7], # Diagonal up
]
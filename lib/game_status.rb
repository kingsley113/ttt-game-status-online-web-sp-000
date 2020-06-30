# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # First column
  [1,4,7], # Middle column
  [2,5,8], # Third column
  [0,4,8], # Diagonal down
  [2,4,6], # Diagonal up
]

def won?(array)
  WIN_COMBINATIONS.each do |win_combination|
    # grab the index combination of winnin positions, assign to 3 index variables
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]


    # load the values of the board at each winning position for this iteration
    position_1 = array[win_index_1]
    position_2 = array[win_index_2]
    position_3 = array[win_index_3]

    # assign array with the postitions to check
    win_positions[position_1, position_2, position_3]

    win_positions.all? do |marker|
      marker == "X" || marker == "O"
      return win_combination
    end

  end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS =
[
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row

  [0, 3, 6], #left column
  [1, 4, 7], #middle columns
  [2, 5, 8], #right columns

  [0, 4, 8],
  [2, 4, 6] #diagnal
]

def won?(board)
  WIN_COMBINATIONS.each {|combo|
   win_index_1 = combo[0]
   win_index_2 = combo[1]
   win_index_3 = combo[2]

   position_1 = board[win_index_1]
   position_2 = board[win_index_2]
   position_3 = board[win_index_3]

 if position_1 == "X" && position_2 == "X" && position_3 == "X"
  return combo # return the win_combination indexes that won.
 else
  false
 end
 }
end

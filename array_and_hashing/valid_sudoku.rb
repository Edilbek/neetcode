# @param {Character[][]} board
# @return {Boolean}

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.

def is_valid_sudoku(board)
  cols = Hash.new { |h, k| h[k] = [] }
  rows = Hash.new { |h, k| h[k] = [] }
  squares = Hash.new { |h, k| h[k] = [] } # key = (r / 3, c / 3)

  board.each_with_index do |row, r|
    row.each_with_index do |val, c|
      next if val == '.'

      return false if rows[r].include?(val) ||
                      cols[c].include?(val) ||
                      squares[[r / 3, c / 3]].include?(val)

      rows[r] << val
      cols[c] << val
      squares[[r / 3, c / 3]] << val
    end
  end

  true
end

board = [
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]

p is_valid_sudoku(board)

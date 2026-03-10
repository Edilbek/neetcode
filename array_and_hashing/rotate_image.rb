# @param {Integer[][]} matri
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    matrix.each_with_index do |row, i|
        row.each_with_index do |v, j|
            if j > i
                matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
            end
        end

        matrix[i].reverse!
    end
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
rotate(matrix)
=begin
  7       8       9

[[1,2,3],[4,5,6],[7,8,9]]

=end

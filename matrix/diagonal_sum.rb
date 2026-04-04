# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
    n = 0
    m = mat[0].length - 1
    sum = 0

    while n < mat[0].length && m >= 0
        l = mat[n][n]
        r = mat[m][n]
        sum += l
        sum += r if n != m

        n += 1
        m -= 1
    end

    sum
end

mat = [[1,2,3],[4,5,6],[7,8,9]]
p diagonal_sum(mat)

mat = [[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1]]
p diagonal_sum(mat)

mat = [[5]]
p diagonal_sum(mat)

mat = [[7,3,1,9],[3,4,6,9],[6,9,6,6],[9,5,8,5]]
p diagonal_sum(mat)

=begin

[7,3,1,9]
[3,4,6,9]
[6,9,6,6]
[9,5,8,5]

=end

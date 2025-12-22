# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    l = 0
    r = numbers.length - 1

    while l < r
        sum = numbers[l] + numbers[r]

        if sum > target
            r -= 1
        elsif sum < target
            l += 1
        else
            return [l + 1, r + 1]
        end
    end

    []
end

=begin
 l
[2,7,11,15], target = 9
   r
=end

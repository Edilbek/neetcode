# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
    # res[0] = numbers < pivot
    # res[1] = numbers == pivot
    # res[2] = numbers > pivot
    res = [[], [], []]

    nums.each do |n|
        if n < pivot
            res[0] << n
        elsif n == pivot
            res[1] << n
        else
            res[2] << n
        end
    end

    res.flatten
end

# def pivot_array(nums, pivot)
#   i, j = 0, nums.length - 1
#   i2, j2 = i, j
#   res = Array.new(nums.length, pivot)

#   while i < nums.length
#     if nums[i] < pivot
#         res[i2] = nums[i]
#         i2 += 1
#     end

#     if nums[j] > pivot
#         res[j2] = nums[j]
#         j2 -= 1
#     end

#     i += 1
#     j -= 1
#   end

#   res
# end


=begin

pivot = 10

                 l
                 r
[9,5,3,10,10,12,14]

[9,5,3,10,10,12,14]

=end

nums = [9,12,5,10,14,3,10]
pivot = 10

p pivot_array(nums, pivot)

=begin

pivot = 10

              l
                       r
[9, 5, 3, 10, 14, 12, 10]
 0  1   2  3   4   5  6

[9,5,3,10,10,12,14]

=end

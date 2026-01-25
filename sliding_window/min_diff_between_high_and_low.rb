# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_difference(nums, k)
    l, r = 0, k - 1
    nums.sort!
    min = Float::INFINITY

    while r < nums.length
        min = [min, nums[r] - nums[l]].min
        l, r = l + 1, r + 1
    end

    min
end

# nums = [9,4,1,7]
# k = 2
# p minimum_difference(nums, k)

# nums = [90]
# k = 1
# p minimum_difference(nums, k)

nums = [87063,61094,44530,21297,95857,93551,9918]
k = 6
p minimum_difference(nums, k)

=begin

[9,4,1,7], k = 2

 min = 3
 cur_min = 4

 l
   r
[1,4,7,9]

=end

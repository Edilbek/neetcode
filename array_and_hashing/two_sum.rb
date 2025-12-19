# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}

  nums.each_with_index do |n, i|
    diff = target - n

    return [i, hash[diff]] if hash[diff]

    hash[n] = i
  end

  -1
end


# This solution works only for sorted array

# def two_sum(nums, target)
#   l = 0
#   r = nums.length - 1

#   while l < r
#     sum = nums[l] + nums[r]

#     return [l, r] if sum == target

#     if sum > target
#       r -= 1
#     else
#       l += 1
#     end
#   end

#   -1
# end


nums = [2,7,11,15]
target = 9
p two_sum(nums, target)

nums = [3,2,4]
target =6
p two_sum(nums, target)

=begin

  [2,7,11,15], 9

  1: 9 - 2 = 7, hash.include?(7) -> no -> {2: 0}
  2: 9 - 7 = 2, hash.include?(2) -> yes -> [hash[diff], i]

=end

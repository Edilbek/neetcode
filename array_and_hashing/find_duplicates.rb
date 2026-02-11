# @param {Integer[]} nums
# @return {Integer[]}
#
# Time: O(n)
# Space: No hashmap
def find_duplicates(nums)
  res = []

  nums.each do |n|
    n_index = n.abs - 1

    if nums[n_index] < 0
        res << n.abs
    else
      nums[n_index] *= -1
    end
  end

  p nums
  res
end

nums = [4,3,2,7,8,2,3,1]
p find_duplicates(nums)

=begin

                 l
[4,-3,-2,-7,8,2,-3,-1]
 0  1  2  3 4 5  6  7
=end

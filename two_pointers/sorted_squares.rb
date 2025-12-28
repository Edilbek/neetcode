# @param {Integer[]} nums
# @return {Integer[]}
# def sorted_squares(nums)
#   res = Array.new(nums.length)
#   l, r = 0, nums.length - 1
#   i = nums.length - 1

#   while l <= r
#     r_square = nums[r] * nums[r]
#     l_square = nums[l] * nums[l]

#     if r_square > l_square
#       res[i] = r_square
#       r -= 1
#     else
#       res[i] = l_square
#       l += 1
#     end

#     i -= 1
#   end

#   res
# end

def sorted_squares(nums)
  res = []
  l, r = 0, nums.length - 1

  while l <= r
    r_square = nums[r] * nums[r]
    l_square = nums[l] * nums[l]

    if r_square > l_square
      res << r_square
      r -= 1
    else
      res << l_square
      l += 1
    end
  end

  res.reverse
end

nums = [-4,-1,0,3,10]
p sorted_squares(nums)

# Time: O(n)
# Space: O(n)

# Input: nums = [-4,-1,0,3,10]
# Output: [0,1,9,16,100]

=begin

         i
  [0,0,0,0,100]

  l
         r
[-4,-1,0,3,10]

=end

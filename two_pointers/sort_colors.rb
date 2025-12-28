# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  # res = [[], [], []]
  # nums.each_with_index do |n|
  #   res[n] << n
  # end

  # res.flatten
  # Time: O(n)
  # Space: O(n)



  # count = [0,0,0]

  # nums.each do |n|
  #   count[n] += 1
  # end

  # index = 0
  # (0..2).each do |color|
  #   p count[color]
  #   count[color].times do
  #     nums[index] = color
  #     index += 1
  #   end
  # end

  # nums
  # Time: O(n)
  # Space: O(1) in-place

  l, r = 0, nums.length - 1
  i = 0

  while i <= r
    if nums[i] == 0
      nums[l], nums[i] = nums[i], nums[l]
      l += 1
    elsif nums[i] == 2
      nums[i], nums[r] = nums[r], nums[i]
      r -= 1
      i -= 1
    end

    i += 1
  end

  nums
end

nums = [2,0,2,1,1,0,0]
p sort_colors(nums)

=begin

# Bucket sort (by count)

[2,0,2,1,1,0]

1: [2,0,2,1,1,0]

=end

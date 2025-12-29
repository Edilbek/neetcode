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

  low, mid, high = 0, 0, nums.length - 1

  while mid <= high
    case nums[mid]
    when 0
      nums[low], nums[mid] = nums[mid], nums[low]
      low += 1
      mid += 1
    when 1
      mid += 1
    when 2
      nums[high], nums[mid] = nums[mid], nums[high]
      high -= 1
    end
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

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  longest = 0

  nums.to_set.each_with_index do |n, i|
    next if nums.include?(n - 1) # n-1 is a prev value of current n. if n 100 then prev is 99

    length = 1
    while nums.include?(n + length)
      length += 1
    end

    longest = [longest, length].max
  end

  longest
end

nums = [100,4,200,1,3,2]
p longest_consecutive(nums)

nums = [0,3,7,2,5,8,4,6,0,1]
p longest_consecutive(nums)

=begin

[100,4,200,1,3,2] => 4

  ^
[100,4,200,1,3,2]

1:

=end

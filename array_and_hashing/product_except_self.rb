# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  res = Array.new(nums.length, 1)
  prefix = 1

  nums.length.times do |i|
    res[i] = prefix
    prefix *= nums[i]
  end

  postfix = 1
  (nums.length - 1).downto(0) do |i|
    res[i] *= postfix
    postfix *= nums[i]
  end

  res
end

nums = [1,2,3,4]
p product_except_self(nums)

=begin

nums = [1,2,3,4]
res = [1,1,1,1]

prefix = 1

=end

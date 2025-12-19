# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}

  nums.each do |n|
    return true if hash[n]

    hash[n] = 1
  end

  false
end

input = [1,1,2,3]
p contains_duplicate(input)

input1 = [1,2,3,4]
p contains_duplicate(input1)

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  tally = nums.tally
  bucket = Array.new(nums.length + 1) { [] } # bucket sort by frequency

  tally.each do |num, count|
    bucket[count] << num
  end

  bucket.flatten.last(k)
end

nums = [1,1,1,2,2,3]
k = 2
p top_k_frequent(nums, k)


nums = [1,2,1,2,1,2,3,1,3,2]
k = 2
p top_k_frequent(nums, k)

=begin

nums = [1,2,1,2,1,2,3,1,3,2]

nums.tally = {1=>4, 2=>4, 3=>2}

res = [[], [], [3], [], [1, 2], []]

=end

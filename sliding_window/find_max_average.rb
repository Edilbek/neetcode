# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  cur_sum = nums[0...k].sum.to_f
  max_avg = cur_sum / k

  (k...nums.length).each do |i|
    cur_sum += nums[i]
    start = i - k
    cur_sum -= nums[start]

    avg = cur_sum / k
    max_avg = [max_avg, avg].max
  end

  max_avg
end

nums = [1,12,-5,-6,50,3]
k = 4

p find_max_average(nums, k)

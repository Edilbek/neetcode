# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
    cur_sum = 0
    res = 0
    prefixSums = { 0 => 1 }

    nums.each_with_index do |n, r|
        cur_sum += n
        diff = cur_sum - k

        res += prefixSums.fetch(diff, 0)
        prefixSums[cur_sum] = 1 + prefixSums.fetch(cur_sum, 0)
    end

    res
end

=begin

{

}

sum = 6
k = 4

     l
         r
[1,1,1,2,2,3,4,5]

=end

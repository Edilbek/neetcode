# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
    res = 0
    l = 0
    product = 1 # product is a multiplication of n's

    nums.each_with_index do |n, r|
      product *= n

      while l <= r && product >= k
        product /= nums[l]
        l += 1
      end

      res += (r - l + 1)
    end

    res
end

nums = [10,5,2,6]
k = 100
p num_subarray_product_less_than_k(nums, k)
# Output: 8
# Explanation: The 8 subarrays that have product less than 100 are:
# [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6]
# Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.

=begin

  l
    r
[10,5,2,6], k = 100


=end

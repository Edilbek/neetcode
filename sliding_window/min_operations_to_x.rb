# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
    l = 0
    max_window = -1
    cur_sum = 0
    target = nums.sum - x

    nums.each_with_index do |n, r|
        cur_sum += n

        while l <= r && cur_sum > target
            cur_sum -= nums[l]
            l += 1
        end

        if cur_sum == target
            max_window = [max_window, r - l + 1].max
        end
    end

    max_window == - 1 ? -1 : nums.length - max_window
end

=begin
sum = 2
x = 10
target=20

        l
            r
[3,2,20,1,1,3]



=end


# nums = [1,1,4,2,3]
# x = 5
# p min_operations(nums, x)

# nums = [5,6,7,8,9]
# x = 4
# p min_operations(nums, x)

nums = [3,2,20,1,1,3]
x = 10
p min_operations(nums, x)

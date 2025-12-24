# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    res = []
    nums.sort!

    nums.each_with_index do |n, i|
        break if n > 0
        next if i > 0 && n == nums[i - 1]

        l, r = i + 1, r = nums.length - 1
        while l < r
            sum = n + nums[l] + nums[r]

            if sum > 0
                r -= 1
            elsif sum < 0
                l += 1
            else
                res.push([n, nums[l], nums[r]])
                l += 1

                while l < r && nums[l] == nums[l - 1]
                    l += 1
                end
            end
        end
    end

    res
end

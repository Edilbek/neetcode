# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    count = 0
    l, r = 0, 1

    while r < nums.length + 1
        next if r == 0

        if nums[r] != nums[l]
            l += 1
            count += 1
            nums[l] = nums[r]
        end

        r += 1
    end
    p nums
    count
end

nums = [0,0,1,1,1,2,2,3,3,4]
p remove_duplicates(nums)

=begin

     l
           r
[0,1,2,1,1,2,2,3,3,4]


=end

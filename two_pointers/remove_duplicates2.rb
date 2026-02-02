# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return nums.length if nums.length <= 2

    l = 0
    nums.each do |n|
        if l < 2 || n != nums[l - 1] || n != nums[l - 2]
            nums[l] = n
            l += 1
        end
    end

    l
end

nums = [1,1,1,2,2,3]
p remove_duplicates(nums)

=begin

res = 0

           l
           r
[1,1,2,2,3,3]
 0 1 2 3 4 5 6 7 8
=end

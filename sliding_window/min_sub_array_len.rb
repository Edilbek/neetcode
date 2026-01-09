# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}

# Time: O(n)
# Space: O(1)
def min_sub_array_len(target, nums)
    sum = 0
    min_sub = Float::INFINITY
    l = 0

    nums.each_with_index do |n, r|
      sum += n

      while sum >= target
        win_length = r - l + 1
        min_sub = [win_length, min_sub].min
        sum -= nums[l]
        l += 1

        while r == nums.length - 1 && l <= r
          if sum >= target
            win_length = r - l + 1
            min_sub = [win_length, min_sub].min
            sum -= nums[l]
          end
          l += 1
        end
      end
    end

    min_sub == Float::INFINITY ? 0 : min_sub
end

target = 7
nums = [2,3,1,2,4,3]
p min_sub_array_len(target, nums)

target = 4
nums = [1,4,4]
p min_sub_array_len(target, nums)

target = 11
nums = [1,1,1,1,1,1,1,1]
p min_sub_array_len(target, nums)

target = 15
nums = [5,1,3,5,10,7,4,9,2,8]
p min_sub_array_len(target, nums)


=begin

         l
           r
[2,3,1,2,4,3]
 0 1 2 3 4 5


=end

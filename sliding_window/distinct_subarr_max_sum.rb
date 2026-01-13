def max_sum(nums, k)
    max_sum = 0
    freq = Hash.new(0)
    l = 0
    cur_sum = 0

    nums.each_with_index do |n, r|
        freq[n] += 1
        cur_sum += n

        if r - l + 1 > k
            left = nums[l]
            freq[left] -= 1
            freq.delete(left) if freq[left] == 0
            cur_sum -= left
            l += 1
        end

        while freq[n] > 1
            left = nums[l]
            freq[left] -= 1
            freq.delete(left) if freq[left] == 0
            cur_sum -= left
            l += 1
        end

        max_sum = [max_sum, cur_sum].max if r - l + 1 == k
    end

    max_sum
end

nums = [5,5,5,5,5]
k = 3

p max_sum(nums, k)

=begin

nums = [5,5,5,5,5]
k = 3

 {
    5: 1,

 }

[5,5,5,5,5]


nums = [3, 2, 2, 3, 4, 6, 7, 7, -1]
k = 4

 {
    # 2: 0,
    3: 1,
    4: 1,
    6: 1
 }

    maxSum = 20

          l
                   r
[3, 2, 2, 3, 4, 6, 7, 7, -1]

=end

def find_max_consec_ones(nums)
  l, r, max = 0, 0, -1
  num_zeros = 0

  while r < nums.length
    num_zeros += 1 if nums[r] == 0

    while num_zeros >= 2
      num_zeros -= 1 if (nums[l] == 0)
      l += 1
    end

    max = [max, r - l + 1].max
    r += 1
  end

  max
end

nums = [1,0,1,1,0]
p find_max_consec_ones(nums)

nums = [0]
p find_max_consec_ones(nums)

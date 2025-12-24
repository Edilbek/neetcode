def triangle_number(heights)
  count = 0
  heights.sort!

  (heights.size - 1).downto(2) do |i|
    l, r = 0, i - 1

    while l < r
      if heights[l] + heights[r] > heights[i]
        count += r - l
        r -= 1
      else
        l += 1
      end
    end
  end

  count
end

nums = [11,4,9,6,15,18]
p triangle_number(nums)

=begin

 i
   l
              r
[4,6,9,11,15,18]


[
  [4,6,18],
  [],
]

=end

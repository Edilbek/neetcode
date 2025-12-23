# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  l, r = 0, height.length -  1
  max = 0

  while l < r
    amount = (r - l) * [height[l], height[r]].min

    if height[l] < height[r]
      l += 1
    else
      r -= 1
    end

    max = [max, amount].max
  end

  max
end

height = [1,8,6,2,5,4,8,3,7]
p max_area(height)

=begin

 l
                 r
[1,8,6,2,5,4,8,3,7]

1:
=end

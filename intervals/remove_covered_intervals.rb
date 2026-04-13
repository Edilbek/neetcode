# @param {Integer[][]} intervals
# @return {Integer}
#
# The interval [a, b) is covered by the interval [c, d) if and only if c <= a and b <= d.
def remove_covered_intervals(intervals)
  intervals.sort_by! { |s, e| [s, -e] }
  max = intervals[0]
  covered = 0

  intervals[1..].each do |cur_int|
    if max[0] <= cur_int[0] && cur_int[1] <= max[1]
      covered += 1
    else
      max = cur_int
    end
  end

  intervals.length - covered
end

intervals = [[1,4],[3,6],[2,8]]
p remove_covered_intervals(intervals)

intervals = [[1,4],[2,3]]
p remove_covered_intervals(intervals)

intervals = [[0,10],[5,12]]
p remove_covered_intervals(intervals)

=begin
[[1,4], [2,8], [3,6]]

1 2 3 4 5 6 7 8
------
  ------------
    ------


1 2 3 4 5 6 7 8
------
  --

1 2 3 4 5 6 7 8 9 10 11 12
-------------------
        -----------------
=end

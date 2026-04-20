# @param {Integer[][]} intervals
# @return {Integer}
def min_groups(intervals)
    intervals.sort!
    overlaps = 0
    int = intervals[0]

    intervals[1..].each do |cur|
        range = cur[0]..cur[1]

        if range.include?(int[0]) || range.include?(int[1])
            overlaps += 1
        end
    end

    overlaps
end

intervals = [[5,10],[6,8],[1,5],[2,3],[1,10]]
p min_groups(intervals)

=begin

[[1, 5], [1, 10], [2, 3], [5, 10], [6, 8]]

- Group 1: [1, 5], [6, 8].
- Group 2: [2, 3], [5, 10].
- Group 3: [1, 10].

1 2 3 4 5 6 7 8 9 10
--------
-------------------
  --
        -----------
          ---------
=end

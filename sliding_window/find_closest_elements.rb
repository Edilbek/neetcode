# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def find_closest_elements(arr, k, x)
    l, r = 0, 1
    res = []

    while r < arr.length
        a = arr[l]
        b = arr[r]

        if (a - x).abs < (b - x).abs ||
            (a - x).abs == (b - x).abs && a < b
            res << a
            l += 1
        end

        r += 1
    end

    res
end

arr = [1,2,3,4,5]
k = 4
x = 3
p find_closest_elements(arr, k, x)

=begin

[1,2,3,4,5], k = 4, x = 3

res = []

 l
       r
[1,2,3,4,5]

1: abs(1-3) < abs(2-3) = 2 < 1
abs(1-3) == abs(2-3) a < b = 2 == 1

=end

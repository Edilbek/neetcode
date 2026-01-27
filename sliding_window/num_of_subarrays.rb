# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} threshold
# @return {Integer}
def num_of_subarrays(arr, k, threshold)
    l, r, res, sum = 0, 0, 0, 0

    while r < arr.length
        sum += arr[r]

        if r - l + 1 == k
            if sum / k >= threshold
                res += 1
            end

            sum -= arr[l]
            l += 1
        end

        r += 1
    end

    res
end

arr = [2,2,2,2,5,5,5,8]
k = 3
threshold = 4
p num_of_subarrays(arr, k, threshold)

arr = [11,13,17,23,29,31,7,5,2,3]
k = 3
threshold = 5
p num_of_subarrays(arr, k, threshold)

=begin

res = 0
k = 3
threshold = 5

     l
              r
[11, 13, 17, 23, 29, 31, 7, 5, 2, 3]
 0   1   2   3   4   5   6  7, 8, 9
=end

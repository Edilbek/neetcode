# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
    n = code.length
    res = Array.new(n, 0)
    l, cur_sum = 0, 0

    (0..n + k.abs).each do |r|
      cur_sum += code[r % n]

      if r - l + 1 > k.abs
        cur_sum -= code[l % n]
        l = (l + 1) % n
      end

      if r - l + 1 == k.abs
        if k > 0
          res[(l - 1) % n] = cur_sum
        elsif k < 0
          res[(r + 1) % n] = cur_sum
        end
      end
    end

    res
end

code = [5,7,1,4]
k = 3
p decrypt(code, k)

=begin

code = [5,7,1,4], k = 3
sum = 17

 l
   r
[5,7,1,4]
 0 1 2 3

code = code = [5,9,12,15,7,1,4], k = 4
sum = 48

 l
           r
[5,9,12,15,7,1,4]
 0 1 2 3 4 5 6 7

=end

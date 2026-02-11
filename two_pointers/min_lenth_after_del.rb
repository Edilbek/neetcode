# @param {String} s
# @return {Integer}
def minimum_length(s)
    n = s.length
    return n if n < 3

    l, r = 0, n - 1

    while l < r
        if s[l] == s[r]
          l += 1
          return 0 if l == r

          if s[l] == s[l - 1]
            l += 1
          end

          r -= 1
          if s[r] == s[r + 1]
            r -= 1
          end
        else
          return r - l + 1
        end
    end

    p [l, r]
    r - l
end

s = 'ca'
p minimum_length(s)


s = 'cabaabac'
p minimum_length(s)

s = 'aabccabba'
p minimum_length(s)

=begin

      l
        r
c a b a a b a c
0 1 2 3 4 5 6 7



      l
          r
a a b c c a b b a
0 1 2 3 4 5 6 7 8
=end

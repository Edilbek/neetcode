# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
    l = 0
    r = s.length - 1

    while l < r
        if s[l] != s[r]
            return palindrome?(s, l + 1, r) || palindrome?(s, l, r - 1)
        end

        l += 1
        r -= 1
    end

    true
end

def palindrome?(s, l, r)
  while l < r
    return false if s[l] != s[r]
    l += 1
    r -= 1
  end
  true
end

=begin

skip = 1
l = 1
r = 5

  l
a w c d c b a
          r
=end

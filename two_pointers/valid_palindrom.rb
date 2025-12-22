# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  l, r = 0, s.length - 1

  while l < r
    while l < r && !alphaNum(s[l])
      l += 1
    end

    while r > l && !alphaNum(s[r])
      r -= 1
    end

    return false if s[l].downcase != s[r].downcase
    l, r = l + 1, r - 1
  end

  true
end

def alphaNum(c)
  ('A'.ord <= c.ord && c.ord <= 'Z'.ord) ||
  ('a'.ord <= c.ord && c.ord <= 'z'.ord) ||
  ('0'.ord <= c.ord && c.ord <= '9'.ord)
end

s = "Was it a car or a cat I saw?"
p is_palindrome(s)

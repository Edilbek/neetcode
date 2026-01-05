# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  return [] if p.length > s.length

  k = p.length
  p_count = p.chars.tally
  s_count = s[0...k].chars.tally

  res = []
  res << 0 if s_count == p_count

  (k...s.length).each do |r|
    l = r - k

    s_count[s[r]] = s_count.fetch(s[r], 0) + 1
    s_count[s[l]] -= 1
    s_count.delete(s[l]) if s_count[s[l]] == 0

    res << (l + 1) if s_count == p_count
  end

  res
end

# Time: O(n)
# Space: O(1)

s = 'cbaebabacd'
p = 'abc'
p find_anagrams(s, p)

=begin

 l r
cbaebabacd

=end

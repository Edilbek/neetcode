# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  freq = Hash.new(0)
  max_length = 0
  l = 0
  maxf = 0
  # we can get the most freq char in 2 ways:
  # 1: freq.values.max                          -> O(n × m) m - hash's elements
  # 2: maxf = 0; maxf = [maxf, freq[s[r]]].max  -> O(1)

  (0...s.length).each do |r|
    freq[s[r]] += 1
    maxf = [maxf, freq[s[r]]].max

    char_num_in_win_to_replace = (r - l + 1) - maxf
    if char_num_in_win_to_replace > k
      freq[s[l]] -= 1
      l += 1
    end

    max_length = [max_length, r - l + 1].max
  end

  max_length
end

s = "ABAB"
k = 2
p character_replacement(s, k)

s = "AABABBA"
k = 1
p character_replacement(s, k)

s = "AABAA"
k = 1
p character_replacement(s, k)

=begin

l
        r
A A B A B B A
0 1 2 3 4 5 6

=end

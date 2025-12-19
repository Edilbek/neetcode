# @param {String[]} strs
# @return {String[][]}

# O(n log n)
def group_anagrams(strs)
  hash = Hash.new { |h, k| h[k] = [] }

  strs.each do |s|
      sorted = s.chars.sort.join

      hash[sorted] << s
  end

  hash.values
end

# O(n * m)
def group_anagrams(strs)
  hash = Hash.new { |h, k| h[k] = [] }

  strs.each do |s|
      arr = Array.new(26, 0)
      s.each_char { |c| arr[c.ord - 'a'.ord] += 1 }

      hash[arr] << s
  end

  hash.values
end

strs = ["eat","tea","tan","ate","nat","bat"]
p group_anagrams(strs)

=begin

strs = ["eat","tea","tan","ate","nat","bat"]

arr = [1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0] -> it will be the key

1: e -> c.ord - 'a'.ord = 4,
2: a -> c.ord - 'a'.ord = 0,
3: t -> c.ord - 'a'.ord = 19
=end

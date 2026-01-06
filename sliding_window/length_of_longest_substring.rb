def length_of_longest_substring(s)
  map = {}
  longest = 0
  l = 0

  s.chars.each_with_index do |char, r|
    while map[char]
      map.delete(s[l])
      l += 1
    end

    map[char] = true
    longest = [longest, r - l + 1].max
  end

  longest
end


=begin
  l
  r
pwwkew

=end

s = 'abcabcbb'
p length_of_longest_substring(s)

s = 'bbbbb'
p length_of_longest_substring(s)

s = 'pwwkew'
p length_of_longest_substring(s)

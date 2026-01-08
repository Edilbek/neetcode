# @param {String} s
# @return {Integer}

# # Best ruby way solution
# def count_good_substrings(s)
#   s.chars.each_cons(3).count { |a| a.uniq.size == 3 }
# end

# No refactoring
# def count_good_substrings(s)
#     map = {}
#     count = 0
#     l = 0

#     s.chars.each_with_index do |char, r|
#         map[char] = (map[char] || 0) + 1
#         win_length = r - l + 1

#         if win_length > 3
#             map[s[l]] -= 1
#             map.delete(s[l]) if map[s[l]] == 0
#             l += 1

#             if map.values.sum == 3 && map.values.length == 3
#                 count += 1
#             end
#         elsif map.values.sum == 3 && map.values.length == 3
#               count += 1
#         end
#     end

#     count
# end


# With refactoring
def count_good_substrings(s)
  freq = Hash.new(0)
  count = 0

  s.chars.each_with_index do |char, r|
    freq[char] += 1

    if r >= 3
      l = r - 3
      left_char = s[l]
      freq[left_char] -= 1
      freq.delete(left_char) if freq[left_char] == 0
    end

    count += 1 if freq.size == 3
  end

  count
end


s = 'xyzzaz'
p count_good_substrings(s)

# s = 'aababcabc'
# p count_good_substrings(s)

=begin

{
  x: 1
  y: 1
  z: 1
}

l
r
x y z z a z
0 1 2 3 4 5

=end

=begin

{
    a: 1
    b: 1
    c: 1
}

    l
          r
a a b a b c a b c
0 1 2 3 4 5 6 7 8



=end

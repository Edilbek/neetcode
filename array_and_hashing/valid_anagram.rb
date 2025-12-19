# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  hash = s.chars.tally

  return false if s.length != t.length

  t.each_char do |c|
    hash[c] -= 1

    hash.delete(c) if hash[c] == 0
  end

  hash.empty?
end

s = "anagram"
t = "nagaram"

p is_anagram(s, t)

# One-line solution:
# s.chars.tally == t.chars.tally


=begin

  {
    a: 2,
    n: 1,
    g: 1,
    r: 1,
    m: 1,
  }

=end

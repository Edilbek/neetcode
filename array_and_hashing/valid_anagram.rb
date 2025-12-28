# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  counts = s.chars.tally
  t.each_char do |c|
    return false unless counts[c] && counts[c] > 0

    counts[c] -= 1
  end

  true
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

# @param {String} s
# @param {Integer} max_letters
# @param {Integer} min_size
# @param {Integer} max_size
# @return {Integer}
def max_freq(s, max_letters, min_size, max_size)
    freq = Hash.new(0)
    subs_freq = Hash.new(0)
    l = 0

    (0...s.length).each do |r|
        freq[s[r]] += 1

        if r - l + 1 > min_size
            freq[s[l]] -= 1
            freq.delete(s[l]) if freq[s[l]] == 0
            l += 1
        end

        if r - l + 1 == min_size && freq.length <= max_letters
            subs_freq[s[l..r]] += 1
        end
    end

    subs_freq.values.max || 0
end

s = "aababcaab"
maxLetters = 2
minSize = 3
maxSize = 4
p max_freq(s, maxLetters, minSize, maxSize)

s = "aaaa"
maxLetters = 1
minSize = 3
maxSize = 3
p max_freq(s, maxLetters, minSize, maxSize)

=begin
{
    'aab': 2
    'aaba': 1
    'abab': 1
    'caa': 1
}

{
    a: 1,
    b: 1,
    # c: 0
}

maxL = 2
MinS = 3
MaxS = 4

    l
      r
aababcaab

=end

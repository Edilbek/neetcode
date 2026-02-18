# @param {String} s
# @return {Integer}
def longest_balanced(s)
    freq = Hash.new(0)
    l = 0
    longest = 0

    s.each_char.with_index do |char, r|
        freq[char] += 1

        if freq.values.sum % freq.length != 0
            freq[s[l]] -= 1
            l += 1

            freq.delete(s[l]) if freq[s[l]] == 0
        end

        longest = [longest, r - l + 1].max
    end

    longest
end

s = 'abbac'
p longest_balanced(s)

=begin

{
    a: 2
    b: 1
}

l
r
a a b c c

=end

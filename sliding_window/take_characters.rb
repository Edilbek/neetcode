# @param {String} s
# @param {Integer} k
# @return {Integer}
def take_characters(s, k)
    l, res = 0, 0
    freq = s.chars.tally

    return -1 if freq['a'].to_i < k || freq['b'].to_i < k || freq['c'].to_i < k

    window_freq = Hash.new(0)

    s.each_char.with_index do |char, r|
        window_freq[char] += 1
        # shrink from left if outside window doesn't have k of each
        while freq['a'].to_i - window_freq['a'] < k ||
              freq['b'].to_i - window_freq['b'] < k ||
              freq['c'].to_i - window_freq['c'] < k

            window_freq[s[l]] -= 1
            l += 1
        end

        res = [res, r - l + 1].max
    end

    s.length - res
end

s = "aabaaaacaabc"
k = 2

p take_characters(s, k)
=begin

{
    a: 8
    b: 2
    c: 2
}

{
    a: 0
    b: 1
    c:
}

  l
  r
aabaaaacaabc


=end

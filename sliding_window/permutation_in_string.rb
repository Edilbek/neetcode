# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    return false if s1.length > s2.length

    k = s1.length
    s1_count = s1.chars.tally
    s2_count = s2[0...k].chars.tally

    return true if s2_count == s1_count

    (k...s2.length).each do |r|
        l = r - k

        s2_count[s2[r]] = s2_count.fetch(s2[r], 0) + 1
        s2_count[s2[l]] -= 1
        s2_count.delete(s2[l]) if s2_count[s2[l]] == 0

        return true if s2_count == s1_count
    end

    false
end

# Time: O(26 * n)
# Space: O(1)

s1 = "ab"
s2 = "eidbaooo"
p check_inclusion(s1, s2)

s1 = "ab"
s2 = "eidboaoo"
p check_inclusion(s1, s2)
=begin

   lr
eidbaooo


=end

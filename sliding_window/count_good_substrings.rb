# @param {String} s
# @return {Integer}
def count_good_substrings(s)
    map = {}
    count = 0
    l = 0

    s.chars.each_with_index do |char, r|
        map[char] = (map[char] || 0) + 1
        win_length = r - l + 1

        if win_length > 3
            map[s[l]] -= 1
            map.delete(s[l]) if map[s[l]] == 0
            l += 1

            if map.values.sum == 3 && map.values.length == 3
                count += 1
            end
        elsif map.values.sum == 3 && map.values.length == 3
              count += 1
        end
    end

    count
end


s = 'xyzzaz'
p count_good_substrings(s)

s = 'aababcabc'
p count_good_substrings(s)

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

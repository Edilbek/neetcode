def min_window(s, t)
  return '' if s.length < t.length

  t_count = t.chars.tally
  s_count = Hash.new(0)

  required = t_count.size
  formed = 0

  left = 0
  min_len = Float::INFINITY
  min_start = 0

  s.each_char.with_index do |char, right|
    next unless t_count[char]

    s_count[char] += 1
    formed += 1 if s_count[char] == t_count[char]

    while formed == required
      if right - left + 1 < min_len
        min_len = right - left + 1
        min_start = left
      end

      left_char = s[left]
      if t_count[left_char]
        s_count[left_char] -= 1
        formed -= 1 if s_count[left_char] < t_count[left_char]
      end

      left += 1
    end
  end

  min_len == Float::INFINITY ? '' : s[min_start, min_len]
end

s = "ADOBECODEBANC"
t = "ABC"

p min_window(s, t)

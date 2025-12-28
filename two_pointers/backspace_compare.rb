# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  index_s, index_t = s.length - 1, t.length - 1

  while index_s >= 0 || index_t >= 0
    index_s = next_valid_char(s, index_s)
    index_t = next_valid_char(t, index_t)

    char_s = index_s >= 0 ? s[index_s] : ''
    char_t = index_t >= 0 ? t[index_t] : ''

    return false if char_s != char_t

    index_s -= 1
    index_t -= 1
  end

  true
end

def next_valid_char(str, index)
  backspace_count = 0

  while index >= 0
    if backspace_count == 0 && str[index] != '#'
      break
    elsif str[index] == '#'
      backspace_count += 1
    else
      backspace_count -= 1
    end

    index -= 1
  end

  index
end

s = "ab#c"
t = "ad#c"
p backspace_compare(s, t)

# s = "ab##"
# t = "c#d#"
# p backspace_compare(s, t)

=begin

backspace_count = 0

  l
 r
abc#



=end

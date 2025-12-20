def encode(strs)
  strs.map do |s|
    "#{s.length}##{s}"
  end.join()
end

def decode(str)
  res = []
  i = 0

  while i < str.length
    j = i
    j += 1 while str[j] != '#'

    length = str[i...j].to_i
    word_start = j + 1
    res << str[word_start, length]

    i = word_start + length
  end

  res
end

strs = ["neet","code","love","you"]
enc = encode(strs)
p decode(enc)

=begin

i    ^
j     ^

s = "4#neet4#code4#love3#you"



=end

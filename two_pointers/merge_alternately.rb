# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  res = ''
  p1, p2, i = 0, 0, 0

  while p1 < word1.length || p2 < word2.length
    if word1[p1]
      res[i] = word1[p1]
      i += 1
    end

    if word2[p2]
      res[i] = word2[p2]
      i += 1
    end

    p1 += 1
    p2 += 1
  end

  res
end

word1 = "abc"
word2 = "pqr"
p merge_alternately(word1, word2)

word1 = "ab"
word2 = "pqrs"
p merge_alternately(word1, word2)

word1 = "abcd"
word2 = "pq"
p merge_alternately(word1, word2)

=begin

word1 = "ab", word2 = "pqrs"

  p1
a b

      p2
p q r s


'apbqrs'
=end

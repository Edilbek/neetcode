class Solution
    def maxScore(cards, k)
        l, r = 0, cards.length - k
        total = cards[r..].sum
        res = total

        while r < cards.length
          total += (cards[l] - cards[r])
          res = [res, total].max
          l += 1
          r += 1
        end

        res
    end
end

cards = [2,11,4,5,3,9,2]
k = 3

p Solution.new.maxScore(cards, k)


=begin

l    r
2,11,4,5,3,9,2

=end

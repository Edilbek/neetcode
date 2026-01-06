# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_prof = 0

  l, r = 0, 0
  while r < prices.length
    profit = prices[r] - prices[l]
    max_prof = [max_prof, profit].max

    profit < 0 ? l += 1 : r += 1
  end

  max_prof
end

# prices = [7,1,5,3,6,4]
# p max_profit(prices)

# prices = [7,6,4,3,1]
# p max_profit(prices)

prices = [2,1,2,1,0,1,2]
p max_profit(prices)

=begin

   l
         r
[2,1,2,1,0,1,2]

=end

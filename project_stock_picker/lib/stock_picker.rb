class StockPicker
  # @param [Array<Integer>] prices Array of stock prices.
  def find_max_profit_days(prices)
    max_profit = [0, 0]
    buy_day = 0
    sell_day = 1

    while sell_day < prices.length
      if prices[buy_day] < prices[sell_day]
        max_profit = update_max_profit(prices, max_profit, buy_day, sell_day)
      else
        buy_day = sell_day
      end
      sell_day += 1
    end
    max_profit
  end

  def update_max_profit(prices, max_profit, buy_day, sell_day)
    curr_profit = prices[sell_day] - prices[buy_day]
    curr_max_profit = prices[max_profit[1]] - prices[max_profit[0]]
    max_profit = [buy_day, sell_day] if curr_max_profit < curr_profit
    max_profit
  end
end

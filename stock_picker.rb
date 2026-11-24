
def stock_picker(prices)
  return [] if prices.length < 2

  best_profit = 0
  best_days = []

  buy_day = 0

  prices.each_with_index do |sell_price, sell_day|
    profit = sell_price - prices[buy_day]

    if profit > best_profit
      best_profit = profit
      best_days = [buy_day, sell_day]
    end

    if sell_price < prices[buy_day]
      buy_day = sell_day
    end
  end

  best_days
end

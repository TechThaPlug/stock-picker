
require_relative "stock_picker"

def main
  puts "=" * 50
  puts "             STOCK PICKER"
  puts "=" * 50

  stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

  puts "\nStock prices:"
  stock_prices.each_with_index do |price, day|
    puts "Day #{day}: $#{price}"
  end

  best_days = stock_picker(stock_prices)

  if best_days.empty?
    puts "\nNo profitable transaction is available."
  else
    buy_day, sell_day = best_days

    buy_price = stock_prices[buy_day]
    sell_price = stock_prices[sell_day]
    profit = sell_price - buy_price

    puts "\nBest transaction:"
    puts "Buy on day: #{buy_day} ($#{buy_price})"
    puts "Sell on day: #{sell_day} ($#{sell_price})"
    puts "Maximum profit: $#{profit}"
  end

  puts "\nStock Picker demonstration completed!"
  puts "=" * 50
end

main if __FILE__ == $PROGRAM_NAME

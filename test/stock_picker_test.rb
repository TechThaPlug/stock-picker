
require "minitest/autorun"
require_relative "../stock_picker"

class StockPickerTest < Minitest::Test
  def test_finds_best_buy_and_sell_days
    assert_equal [1, 4], stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
  end

  def test_handles_multiple_profitable_opportunities
    assert_equal [1, 4], stock_picker([10, 5, 20, 15, 30])
  end

  def test_returns_empty_array_when_prices_only_decrease
    assert_equal [], stock_picker([30, 20, 10, 5])
  end

  def test_handles_two_days
    assert_equal [0, 1], stock_picker([5, 10])
  end

  def test_handles_one_day
    assert_equal [], stock_picker([10])
  end

  def test_handles_empty_array
    assert_equal [], stock_picker([])
  end

  def test_handles_equal_prices
    assert_equal [], stock_picker([10, 10, 10])
  end

  def test_finds_best_profit_when_lowest_price_is_last
    assert_equal [0, 2], stock_picker([10, 20, 5])
  end

  def test_finds_best_profit_when_highest_price_is_first
    assert_equal [1, 2], stock_picker([30, 10, 20])
  end

  def test_does_not_sell_before_buying
    assert_equal [1, 2], stock_picker([20, 10, 15])
  end
end

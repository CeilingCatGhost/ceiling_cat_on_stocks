require 'test_helper'

class StockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "stock is invalid without a ticker_symbol" do
    test_stock = Stock.new
    assert !test_stock.valid?, "Ticker_symbol presence is not being validated."
  end

  test "stock is invalid if ticker_symbol is not unique" do
    test_stocka = Stock.create(ticker_symbol: "ABC")
    test_stockb = Stock.create(ticker_symbol: "ABC")
    assert !test_stockb.valid?, "Ticker_symbol uniqueness is not being validated."
  end
end

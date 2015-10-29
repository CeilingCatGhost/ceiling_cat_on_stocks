json.array!(@stocks) do |stock|
  json.extract! stock, :id, :ticker_symbol, :comp_name, :founded_date, :ipo_date, :sector, :industry
  json.url stock_url(stock, format: :json)
end

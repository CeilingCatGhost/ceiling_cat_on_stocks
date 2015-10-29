class QuandlInterfaceController < ApplicationController

  def questionable
    @data = Quandl::Dataset.get('WIKI/AAPL')
    @datell = Quandl::Dataset.get('WIKI/AAPL').data.first.open
  end
end

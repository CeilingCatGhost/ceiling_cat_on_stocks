class QuandlInterfaceController < ApplicationController

  def questionable
    @data = Quandl::Dataset.get('WIKI/AAPL')
  end
end

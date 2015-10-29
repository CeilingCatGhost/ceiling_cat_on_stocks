require 'quandl'

Quandl::ApiConfig.api_key = ENV['QUANDL_API_KEY']
Quandl::ApiConfig.api_version = ENV['QUANDL_API_VERSION']

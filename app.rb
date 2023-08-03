require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

get("/") do
  symbols_url = "https://api.exchangerate.host/symbols"
  symbols_data = HTTP.get(symbols_url)
  parsed_symbols = JSON.parse(symbols_data)
  @symbols = parsed_symbols.fetch("symbols")

  
  erb(:root)
end

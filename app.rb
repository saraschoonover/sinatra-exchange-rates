require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:root)
end



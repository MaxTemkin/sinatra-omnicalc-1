require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

#Square

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @number = params.fetch("number").to_i
  @square_result = @number**2
  erb(:squareresults)
end

#Square Root

get("/square_root/new") do
  erb(:squareroot)
end

get("/square_root/results") do
  @number = params.fetch("number").to_i
  @result = @number**0.5
  erb(:squarerootresults)
end

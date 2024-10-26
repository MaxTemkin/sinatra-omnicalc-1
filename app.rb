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
  @number = params.fetch("number").to_f
  @square_result = @number**2
  erb(:squareresults)
end

#Square Root

get("/square_root/new") do
  erb(:squareroot)
end

get("/square_root/results") do
  @number = params.fetch("number").to_f
  @result = @number**0.5
  erb(:squarerootresults)
end

get ("/payment/new") do
  erb(:payment)
end

get ("/payment/results") do
  @user_apr = params.fetch("user_apr").to_f
  @user_years = params.fetch("user_years").to_i
  @user_pv = params.fetch("user_pv").to_f
  
    r = @user_apr/100/12
    n = @user_years*12
    @numerator = r*@user_pv
    @denominator = 1 - (1 + r) ** -n

  @result = @numerator/@denominator
  erb(:paymentresults)
end

get ("/random/new") do
  erb(:random)
end

get ("/random/results") do
  @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f
  @result = rand(@user_min..@user_max)
  erb(:randomresults)
end

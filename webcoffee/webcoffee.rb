require "sinatra"
require_relative "../praxis11"

m1 = Coffeemachine.new(100,2000)
m1.fill_coffee(100)
m1.fill_water(2000)

get "/" do
  @random_number = rand 10..20
  @coffee_out = m1.info
  erb :index
end

get "/params" do
  @name = params['name']
  erb :params
end

get "/login" do
  erb :login
end


require "sinatra"

get "/" do
  @random_number = rand 10..20
  erb :index
end

get "/params" do
  @name = params['name']
  erb :params
end

get "/login" do
  erb :login
end

post "/login" do
  if params['username'] == 'otto' && params['password'] == 'hallo'
    redirect to('/')
  else
    erb :login
  end
end

require 'sinatra'

get '/' do
  p @suma = (request.cookies["suma"]).to_i
  erb :index
end

post '/index' do
  if (request.cookies["suma"]==nil)
    p "entro al if"
    response.set_cookie("suma", value: "1")
  else
    p "entro al else"
    response.set_cookie("suma", value: (((request.cookies["suma"]).to_i)+1))
  end
  redirect '/'
end

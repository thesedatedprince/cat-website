require 'sinatra'


get '/' do
  'Hello!'
end

get '/secret' do
  'This is my second message.'
end

get '/test' do
  'This is my third message.'
end


get '/random-cat' do
  @name_generator = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name_generator = params[:name]
  erb(:index)
end

get '/form' do
  @name_generator = params[:name]
  erb(:index)
end

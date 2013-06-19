require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune({:max_length => 200})
  erb :edition
end

get '/sample/' do
  @fortune = FortuneGem.give_fortune({:max_length => 200})
  erb :edition
end
require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune
  etag Digest::MD5.hexdigest(Time.now.utc)  

  erb :edition
end

get '/sample/' do
  @fortune = FortuneGem.give_fortune
  erb :edition
end
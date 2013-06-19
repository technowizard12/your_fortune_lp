require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune({:max_length => 220})
  etag Digest::MD5.hexdigest(Time.now.utc.strftime('%l%p, %d %b %M %S %Y %Z'))  

  erb :edition
end

get '/sample/' do
  @fortune = FortuneGem.give_fortune({:max_length => 220})
  erb :edition
end
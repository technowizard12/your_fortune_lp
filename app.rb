require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune({:max_length => 225x})
  etag Digest::MD5.hexdigest(@fortune + Time.now.utc.strftime('%l%p, %d %b %M %Y %Z'))  

  erb :edition
end

get '/sample/' do
  erb :sample
end
require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune({:max_length => 250})
  etag Digest::MD5.hexdigest(@fortune + Time.now.utc.strftime('%l%p, %d %b %Y %Z'))  

  erb :edition
end

get '/sample/' do
  erb :sample
end
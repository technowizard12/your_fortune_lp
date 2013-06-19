require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune({:max_length => 200})
  erb :edition
end

get '/sample/' do
  @fortune = FortuneGem.give_fortune({:max_length => 200})
  @random = rand(100)
  etag Digest::MD5.hexdigest(@random+Time.now.utc.strftime('%l%p, %d %b %Y %Z'))  
  erb :edition
end
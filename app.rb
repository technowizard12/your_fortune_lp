require 'sinatra'
require 'fortune_gem'

get '/edition/' do
  @fortune = FortuneGem.give_fortune({:max_length => 250})
  etag Digest::MD5.hexdigest(@fortune + Time.now.utc.strftime('%l%p, %d %b %Y %Z'))  

  #etag is the same if the same fortune is accessed within a minute
  #because, to be true to fortune, the program is able to generate
  #duplicates. But duplicates one after another are no fun. It's
  #still highly unlikely you'll get duplicates on the same day

  erb :edition
end

get '/sample/' do
  erb :sample
end
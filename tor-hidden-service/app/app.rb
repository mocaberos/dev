require 'sinatra'

set :server, :puma

get '/' do
  'hello world'
end

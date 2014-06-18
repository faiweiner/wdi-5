require 'pry'
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end

get '/processing' do
  params.inspect
end


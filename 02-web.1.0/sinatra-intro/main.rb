require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  # Whatever appears inside this block, it's going to appear in the page
  # Whatever it returns, it will appear on the webpage
  "Ya this is my main page :) "
end

get '/hello' do
  # Whatever appears inside this block, it's going to appear in the page
  # Whatever it returns, it will appear on the webpage
  "Hello WHATS UP from Sinatra"
end

get '/greet/rolf' do
  "Hello there Rolf Harris"
end

get '/greet/:firstname' do
  "What's up, #{ params[:firstname] }"
end

get '/greet/:firstname/:lastname' do #this part means it's dynamic
  "How do you do, #{ params[:firstname].capitalize } #{ params[:lastname].upcase }" 
end

# order of input matters, so which order you put in your code matters

get '/greet/:firstname/:lastname/:age' do
  "You are #{params[:firstname].capitalize} #{params[:lastname].capitalize} and you are #{params[:age]}"
end

## Calculator ##

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "the result is #{ result }"
end
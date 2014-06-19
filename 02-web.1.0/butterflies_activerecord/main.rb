require 'pry'
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require_relative 'butterfly'

before do
  @families = Butterfly.select('family').uniq
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/butterflies'
end

get '/butterflies' do #list of all butterflies
  @butterflies = Butterfly.all
  erb :butterflies
end

# form for a new butterfly
get'/butterflies/new' do
  erb :new_butterfly
end

get '/butterflies/:id' do #specific butterfly
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :butterfly
end

get '/butterflies/family/:family' do
  # family = params[:family]
  # sql = "SELECT * FROM butterflies WHERE family = #{ family }"

  @butterflies = Butterfly.where(:family => params[:family])
  erb :butterflies 
end

get '/butterflies/:id/edit' do
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :edit_butterfly
end

post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.image = params[:image]
  butterfly.family = params[:family]

  butterfly.save

  redirect to "/butterflies/#{ butterfly.id }"
end

# delete a butterfly
get '/butterflies/:id/delete' do
  id = params[:id]
  butterfly = Butterfly.find id

  butterfly.destroy

  redirect to "/butterflies"
end

#add a new butterfly
post '/butterflies' do
  # butterfly = Butterfly.new
  # butterfly.name = params[:name]
  # butterfly.image = params[:image]
  # butterfly.family = params[:family]

  # butterfly.save
  # redirect to "/butterflies"

  Butterfly.create :name => params[:name], :image => params[:image], :family => params[:family]
end


def query_db(sql)
  db = SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
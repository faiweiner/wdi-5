require 'pry'
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

before do
  @families = query_db("SELECT DISTINCT(family) FROM butterflies")
  @families = @families.flatten
end

get '/' do
  redirect to '/butterflies'
end

get '/butterflies' do #list of all butterflies
  @butterflies = query_db("SELECT * FROM butterflies")
  erb :butterflies
end

# form for a new butterfly
get'/butterflies/new' do
  erb :new_butterfly
end

get '/butterflies/:id' do #specific butterfly
  id = params[:id]
  sql = "SELECT * FROM butterflies WHERE id = #{ id }"
  @butterfly = query_db sql
  @butterfly = @butterfly.first # to flatten and only taken the fist butterfly, because query_db always return an array [[butterfly]]
 
  erb :butterfly
end

get '/butterflies/family/:family' do
  family = params[:family]
  sql = "SELECT * FROM butterflies WHERE family = #{ family }"

  erb :butterflies 
end

get '/butterflies/:id/edit' do
  id = params[:id]
  sql = "SELECT * FROM butterflies WHERE id = #{ id }"
  @butterfly = query_db sql
  @butterfly = @butterfly.first

  erb :edit_butterfly
end

post '/butterflies/:id' do
  id = params[:id]
  name = params[:name]
  image = params[:image]
  family = params[:family]

  sql = "UPDATE butterflies SET name='#{name}', image='#{image}', family='#{family}' WHERE id=#{ id }"
  query_db sql

  redirect to "/butterflies/#{ id }"
end

# delete a butterfly
get '/butterflies/:id/delete' do
  "SOME TEXT"
  id = params[:id]
  sql = "DELETE FROM butterflies WHERE id=#{ id }"
  query_db sql

  redirect to "/butterflies"
end

#add a new butterfly
post '/butterflies' do
  name = params[:name]
  image = params[:image]
  family = params[:family]
  sql = "INSERT INTO butterflies (name, image, family) VALUES ('#{params[:name]}', '#{params[:image]}', '#{params[:family]}')"
  query_db sql

  redirect to "/butterflies"
end


def query_db(sql)
  db = SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
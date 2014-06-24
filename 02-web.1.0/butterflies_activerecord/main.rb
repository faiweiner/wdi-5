require 'pry'
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

require_relative 'butterfly'
require_relative 'plant'

before do
  @families = Butterfly.select('family').uniq
  @plants = Plant.all
  @butterflies = Butterfly.all
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb :index
end

#--- all list ---#
get '/butterflies' do #list of all butterflies
  
  erb :butterflies
end

get '/plants' do #list of all plants

  erb :plants
end
#--- all list ---#

# form for a new butterfly
get'/butterflies/new' do
  erb :new_butterfly
end

get'/plants/new' do
  erb :new_plant
end

get '/butterflies/:id' do #specific butterfly
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :butterfly
end

get '/plants/:id' do #specific plant
  id = params[:id]
  @plant = Plant.find id
  erb :plant
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

get '/plants/:id/edit' do
  id = params[:id]
  @plant = Plant.find id
  erb :edit_plant
end

#---- posting plants and butterflies edits ---#

post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.image = params[:image]
  butterfly.family = params[:family]

  butterfly.plant_id = params[:plant_id]
  butterfly.save

  redirect to "/butterflies/#{ butterfly.id }"
end

post '/plants/:id' do
  plant = Plant.find params[:id]
  plant.name = params[:name]
  plant.image = params[:image]

  plant.save

  redirect to "/plants/#{ plant.id }"
end

# delete plants and butterflies
get '/butterflies/:id/delete' do
  id = params[:id]
  butterfly = Butterfly.find id

  butterfly.destroy

  redirect to "/butterflies"
end

get '/plants/:id/delete' do
  id = params[:id]
  plant = Plant.find id

  plant.destroy

  redirect to "/plants"
end

#add a new butterfly
post '/butterflies' do
  # butterfly = Butterfly.new
  # butterfly.name = params[:name]
  # butterfly.image = params[:image]
  # butterfly.family = params[:family]

  # butterfly.save
  # redirect to "/butterflies"

  Butterfly.create(
    :name => params[:name],
    :image => params[:image],
    :family => params[:family],
    :plant_id => params[:plant_id]
  )

  redirect to '/butterflies'
end

post '/plants' do
  Plant.create :name => params[:name], :image => params[:image]
  redirect to '/plants'
end
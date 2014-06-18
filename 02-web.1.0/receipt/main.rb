require 'pry'
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  @receipts = query_db "SELECT * FROM receipts"
  erb :receipts
end

get '/new' do
 erb :new_receipt
end

post '/' do
  # "INSERT INTO receipts (service, cost) VALUES ('Do some service', '12')"
  sql = "INSERT INTO receipts (service, cost) VALUES ('#{ params['service'] }', '#{ params['cost'] }' )"
  
  query_db sql  
  redirect to "/"
end

get '/receipts/:id' do
  id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ id }"
  @receipts = query_db sql
  @receipt = @receipts.first #Flattening the array

  erb :receipt
end

get '/receipts/:id/edit' do
  id = params[:id]
end

delete '/receipts/:id' do

end

get '/stats' do 
  @max = query_db("SELECT MAX(cost) FROM receipts").last[0]
  @min = query_db("SELECT MIN(cost) FROM receipts").last[0]
  @average = query_db("SELECT AVG(cost) FROM receipts").last[0]
  @count = query_db("SELECT COUNT(*) FROM receipts").last[0]

  erb :stats
end

def query_db(sql)
  db = SQLite3::Database.new "receipts.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result

end


# post '/' do
#   f = File.new('receipt.txt', 'a+')

#   @service = params[:service]
#   @cost = params[:cost]

#   f.puts("COMPANY NAME: Idiot Cousin Services")
#   f.puts("Good/service provided: #{ @service }")
#   f.puts("Cost: #{ @cost }")
#   f.puts("Thank you for your patronage.")
#   f.puts("We are missing you already.")
#   f.puts("-----------------------------------")

#   #when you open this form, you're going to append the form, add new items at the end

#   f.close
#   #Remember to CLOSE files every time you open it!!
#   erb :receipt
# end
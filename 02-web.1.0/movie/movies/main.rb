require 'pry' if development?
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

require_relative 'movies.rb'

@counts = 0


after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/fetch'
end

get '/fetch' do
  @title = params[:Title]

  if @title != nil 
    if Movie.find_by_title("#{ @title }")
      puts "THIS WORKS"
    else
      @title.gsub!(/ /, '+')
      url = "http://omdbapi.com/?i=&s=#{ @title }"
      search = HTTParty.get(url)
      @titles_list = JSON.parse(search)
      @titles_list["Search"].each do |m| 
        @id = m['imdbID']
        url = "http://omdbapi.com/?i=#{ @id} "
        details = JSON(HTTParty.get(url))
        if details['Type'] == "movie" && details['Rated'] != "N/A"
          movie = Movie.new
          movie.imdb_id = "this works"
          movie.title = details['Title']
          movie.year = details['Year']
          movie.rated = details['Rated']
          movie.released = details['Released']
          movie.runtime = details['Runtime']
          movie.genre = details['Genre']
          movie.director = details['Director']
          movie.writer = details['Writer']
          movie.actors = details['Actors']
          movie.poster = details['Poster']

          movie.save
        end
      end
    end
  end

    if @counts == 1
      #@titles_array.collect { }
      @id = @titles_list["Search"][0]['imdbID']
      redirect to ("/display?id=#{ @id }")
    else
      # @movie_array = @titles_list["Search"].flatten
      # @movie_array.select do |att|
      #   params[:id] = att["imdbID"]
      # end
    end
  erb :movie_list
end

get '/display' do
  @id = params[:id]
  url = "http://omdbapi.com/?i=#{ @id} "
  input = HTTParty.get(url)

  movie = Movie.new

  @select_movie = JSON.parse(input)
  @select_poster = @select_movie['Poster']

  erb :display
end



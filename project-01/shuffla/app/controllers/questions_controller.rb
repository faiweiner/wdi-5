class QuestionsController < ActionController::Base
  def new
    require 'rspotify'
    @artists = RSpotify::Artist.search("genre:Rock", limit = 10, offset = 0)

    @artists.each do |artist|
      # get song
    end
  end
end
class QuestionsController < ActionController::Base
  require 'rspotify'
  require "json"
  require "plaything"

  def new
    @artists = RSpotify::Artist.search("Rihanna")
    @selected_artist = @artists.first
    tracks_array = @selected_artist.top_tracks(:US)
    @selected_track = tracks_array.sample
    # @song_list = []
    # @artists.each do |artist|
    #   top_tracks = artist.top_tracks(:US)
    #   top_tracks.map do |t|
    #     @song_list << t.id
    #   end
    # end
    # @links = ''
    # @song_list.each do |song|
    #   @links += song
    #   @links += ',' unless song == @song_list.last
    # end
    # @selected_song_uri = @song_list.sample
    # @selected_song = RSpotify::Track.find(@selected_song_uri)

    q = Question.new

  end
end
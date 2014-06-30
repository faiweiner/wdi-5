class QuestionsController < ActionController::Base
  def new
    require 'rspotify'
    @artists = RSpotify::Artist.search("genre:Pop/Rock", limit = 2, offset = 0)
    @song_list = []
    @artists.each do |artist|
      top_tracks = artist.top_tracks(:US)
      top_tracks.map do |t|
        @song_list << t.id
      end
    end
    @links = ''
    @song_list.each do |song|
      @links += song
      @links += ',' unless song == @song_list.last
    end
    @song_question = @song_list.sample
    @track = RSpotify::Track.find(@song_question)

    q = Question.new

  end
end
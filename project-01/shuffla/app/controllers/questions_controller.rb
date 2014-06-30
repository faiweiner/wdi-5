class QuestionsController < ActionController::Base
  require 'rspotify'
  require "json"
  require "plaything"

  def new
    @artists = RSpotify::Artist.search("Rihanna")
    @selected_artist = @artists.first
    @tracks_array = @selected_artist.top_tracks(:US)
    @choices_tracks = []
    @choices_tracks = @tracks_array.sample(4)
    @selected_track = @choices_tracks.sample

    @question = Question.new
  end

  def create
    @quesion = Question.new question_params
  end

  private

  def question_params
    params.require(:question).permit(:correct, )
  end
end
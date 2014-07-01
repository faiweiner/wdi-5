class GamesController < ApplicationController
  def index
  end

  def new
  end

  def create
    #if params come from Artist Search =>
    @artists = RSpotify::Artist.search(params[:search])
    @selected_artist = @artists.first
    
    @game = Game.new
    # Come back here to fix BUG - what if user drops out mid-game?
    @game.user_id = @current_user.id
    @game.save

    redirect_to games_new_artist_path
  end

  def genre
  end
  def playlist
  end
  def artist
  end

  def show
    @game = Game.find params[:id]
    artist_id = Question.last.artist_id
    @artist_test_name = RSpotify::Artist.find(artist_id).name
    @game_question_count = Game.last.questions.count
    @game_correct_count = Game.last.questions.where("correct = true").count
    total_time = 0 #
    Game.last.questions.each do |question|
      total_time += question.duration
    end
    @game_avg_time = Game.last.questions.average("duration")
    @game.total_time_points = 100 - total_time.round(2)
    @game.save
  end

  private

  def game_params
    params.require(:game).permit(:total_correct, :total_time_points, :genre, :user_id)
  end

end
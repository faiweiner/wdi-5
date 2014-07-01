class GamesController < ApplicationController
  def index

  end
  def new
    @game = Game.new
    @game.user_id = @current_user.id
    @game.save
  end

  def create
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
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

  private

  def game_params
    params.require(:game).permit(:total_correct, :total_time_points, :genre, :user_id)
  end

end
class GameController < ApplicationController

  def index
    @user = current_user
    if current_user
      redirect_to new_game_path
    else
      render 'index'
    end
  end

  def new
    @user = current_user
    @cities = City.all
  end

  def show
    @city = City.find_by(params[:city_id])
  end

end

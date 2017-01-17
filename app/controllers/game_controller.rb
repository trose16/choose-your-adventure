class GameController < ApplicationController

  def index
    @user = current_user
    if current_user
      render 'new'
    else
      render 'index'
    end
  end

end

class StoryController < ApplicationController

  def index
    
  end



  def show
    @story = Story.find(params[:id])
  end

end

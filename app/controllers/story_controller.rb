class StoryController < ApplicationController

  def index
    @story = Story.all
  end



  def show
    @story = Story.find(params[:id])
  end

end

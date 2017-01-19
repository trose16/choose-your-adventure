class StoryController < ApplicationController

  def index
    @story = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @choices = @story.choices
    @story_location = @story.location
  end

  private

  def picture_params
    params.require(:picture).permit(:id)
  end

end

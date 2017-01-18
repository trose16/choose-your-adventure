class StoryController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @choices = @story.choices
  end

end

class StoriesController < ApplicationController
  def index
    @current_time = Time.now

    @story = Story.order('RANDOM()').first

  end
end

class RoundsController < ApplicationController

  def new
    @round = Round.new
    @courses = Course.all
  end

  def index
  end

  def create
  end

  def update
  end

  def destroy
  end

end

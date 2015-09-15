class CoursesController < ApplicationController

  def new
    @course = Course.new
  end

  def show
    @course = Course.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @course }
    end
  end

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(courses_params)
    if @course.save
      redirect_to root_path, notice: "Your entry for #{@course.name} was saved successfully!"
    else
      flash.alert = "Please fix the errors below to continue."
      render :new
    end
  end

  def update
  end

  def destroy
  end

  protected

  def courses_params
    params.require(:course).permit(:name, :city, :state, :number_of_holes)
  end

end

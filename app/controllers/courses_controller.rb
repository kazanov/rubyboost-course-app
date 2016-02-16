class CoursesController < ApplicationController

  COURSES_PER_PAGE = 2

  def index
    @courses = Course.recent.page(params[:page]).per(params[:per_page] || COURSES_PER_PAGE)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(courses_params)

    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(courses_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    redirect_to courses_path
  end

  private

  def courses_params
    params.require(:course).permit(:title, :picture)
  end

end

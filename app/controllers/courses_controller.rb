class CoursesController < ApplicationController
  COURSES_PER_PAGE = 9

  def index
    @courses = Course.recent.page(params[:page]).per(params[:per_page] || COURSES_PER_PAGE)
  end
end

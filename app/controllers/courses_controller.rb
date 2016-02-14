class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(courses_params)

		if @course.save
			redirect_to courses_path
		else
			render 'new'
		end
	end

	private

	def courses_params
    params.require(:course).permit(:title)
  end

end
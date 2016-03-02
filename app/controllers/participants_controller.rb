class ParticipantsController < ApplicationController
  def index
    @participants = course.participants.includes(:profile)
  end

  private

  def course
    @course ||= Course.find(params[:course_id])
  end

  helper_method :course
end

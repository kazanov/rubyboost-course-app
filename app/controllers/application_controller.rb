class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(*)
    users_courses_path
  end

  layout :choose_layout

  private

  def choose_layout
    devise_controller? ? 'devise_layout' : 'application'
  end
end

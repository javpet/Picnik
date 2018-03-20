class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user #Let's run this every page, before anything

  helper_method :current_user, :is_logged_in? # Make methods available to views

  def current_user
    if is_logged_in?
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end

    @current_user
  end

  def is_logged_in?
    session[:user_id].present?
  end

end

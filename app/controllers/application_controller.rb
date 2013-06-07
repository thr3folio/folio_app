class ApplicationController < ActionController::Base
  before_filter :require_signed_in_user
  protect_from_forgery

  helper_method :signed_in?
  helper_method :current_user

  def signed_in?
    return session[:user_id].present?
  end

  def current_user
    return User.find_by_id(session[:user_id])
  end

  # def current_user?
  #   @_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  # end

  def recruiter?
    true
  end

  def require_signed_in_user
    unless signed_in?
      redirect_to signin_url, notice: "Must be signed in for that."
    end
  end
end

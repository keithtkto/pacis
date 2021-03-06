class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  helper_method :current_user
  helper_method :current_company

  def current_user
    current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def current_company
    current_company ||= Company.find_by(id: current_user.company_id)
  end


end

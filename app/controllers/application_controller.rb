# Explanation
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to new_session_path unless signed_in?
  end

  def signed_in?
    current_user.present?
  end

  def current_user
    session[:current_email]
  end

  def sign_in_as(email)
    session[:current_email] = email
  end
end

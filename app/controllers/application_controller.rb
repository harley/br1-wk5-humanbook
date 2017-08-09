class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def login(user)
    session[:user_id] = user.id
  end

  def logout(user)
    session[:user_id] = nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    if current_user == nil
      flash[:error] = "Access denied , Please login.."
      redirect_to root_path
     else 
    end
  end   

end

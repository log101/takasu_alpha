class ApplicationController < ActionController::Base
  before_action :authorize

  def authorized?
    User.find_by(id: session[:user_id])
  end
  protected

  def authorize
    if User.find_by(id: session[:user_id])
      @user = User.find_by(id: session[:user_id])
      @authorized = true
    else
      @authorized = false
      redirect_to new_session_url, notice: "Bu sayfayı görme yetkiniz yok"
    end
  end
end

class ApplicationController < ActionController::Base
  before_action :authorize

  protected

  def authorize
    if User.find_by(id: session[:user_id])
      @authorized = true
    else
      @authorized = false
      redirect_to new_session_url, notice: "Lütfen giriş yapınız"
    end
  end
end

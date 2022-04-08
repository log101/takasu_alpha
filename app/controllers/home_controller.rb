class HomeController < ApplicationController
  skip_before_action :authorize, only: :index
  def index
    if session[:user_id]
      redirect_to User.find(session[:user_id])
    end
  end
end

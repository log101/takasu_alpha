class SessionsController < ApplicationController
  skip_before_action :authorize, only: %i[new create destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to new_session_url, notice: "Girdiğiniz bilgiler herhangi bir kullanıcı ile eşleşmiyor"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_url, notice: "Hesabınızdan başarıyla çıkış yaptınız", status: :see_other
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login(user)
      flash[:success] = "ログインしました"
      redirect_to user
    else
      flash.now[:danger] = "ログインに失敗しました"
      render "new"
    end
  end

  def destroy
    if logged_in?
      logout
      flash[:success] = "ログアウトしました"
      redirect_to login_url
    end
  end
end

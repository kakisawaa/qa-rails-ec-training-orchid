class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login(user)
      # TODO: 日本語化のタスクの時に以下の日本語をconfig/localsに定義する
      flash[:success] = "ログインしました" # rubocop:disable Rails/I18nLocaleTexts
      redirect_to user
    else
      flash.now[:danger] = "ログインに失敗しました"
      render "new"
    end
  end

  def destroy
    if logged_in?
      logout
      # TODO: 日本語化のタスクの時に以下の日本語をconfig/localsに定義する
      flash[:success] = "ログアウトしました" # rubocop:disable Rails/I18nLocaleTexts
      redirect_to login_url
    end
  end
end

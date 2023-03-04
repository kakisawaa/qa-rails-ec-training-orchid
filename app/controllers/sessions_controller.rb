class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login(user)
      redirect_to user
    else
      render "new"
    end
  end

  def destroy
    logout
    redirect_to login_url
  end
end

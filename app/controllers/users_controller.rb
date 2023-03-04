class UsersController < ApplicationController
  include SessionsHelper
  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user, only: [:show, :edit, :update]

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(user_params)
    if @user.save
      # TODO: 日本語化のタスクの時に以下の日本語をconfig/localsに定義する
      flash[:success] = "更新に成功しました" # rubocop:disable Rails/I18nLocaleTexts
      redirect_to @user
    else
      flash.now[:danger] = "更新に失敗しました"
      render "edit"
    end
  end

  private

    def user_params
      params.require(:user).permit(:last_name, :first_name, :zipcode, :prefecture, :municipality, :address, :apartments, :email, :phone_number, :password,
                                   :password_confirmation)
    end
end

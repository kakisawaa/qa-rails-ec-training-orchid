module SessionsHelper
  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def correct_user
    @user = User.find_by(id: params[:id])
    if current_user != @user
      flash[:danger] = '他人の情報にアクセスすることはできません。'
      redirect_to root_url
    end
  end
  
  def current_user?(user)
    user == current_user
  end

  def logged_in?
    current_user.present?
  end

  def logged_in_user
    unless logged_in?
      flash['danger'] = "ログインしてください。"
      redirect_to login_url
    end
  end

  def logout
    session.delete(:user_id)
    @current_user = nil # rubocop:disable Rails/HelperInstanceVariable
  end
end

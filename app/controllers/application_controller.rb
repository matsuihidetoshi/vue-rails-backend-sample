class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def correct_user
    user = User.find(params[:id])
    unless user == current_user
      redirect_to root_url
    end
  end

  def save_last_user
    if User.all.length < 2
      flash[:danger] = '管理者は1人以上必要です'
      redirect_to root_url
    end
  end

end

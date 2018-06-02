class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configre_permitted_parameters, if: :devise_controller?

  #ログイン時にusersのshowに飛ばす
  def after_sign_in_path_for(resource)
    users_path
  end

  private
  # ログインしているユーザーはshow,ログインしてない場合はログインページに遷移
  def sign_in_required
    direct_to new_user_session_url unless user_signed_in?
  end

    #ストロングパラメーター
  protected
    def configre_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end

end

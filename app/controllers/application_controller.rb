class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configre_permitted_parameters, if: :devise_controller?
  before_action :set_search

  #ヘッダーで検索するパラメーターを取得。
  def set_search
    @videos = Video.all
    @category = Category.find_by(id: params[:id])

    #ransack
    @search = Video.ransack(params[:q])
    @videos = @search.result(distinct: true) #重複していないものを取り出す
    if @video
      redirect_to search_path
    end
  end

  def search
    @search = Video.search(search_params)
    @videos = @search.result(distinct: true)
  end



  #ログイン時にusersのshowに飛ばす
  def after_sign_in_path_for(resource)
    # users_path
    current_user
  end

  private
  # ログインしているユーザーはshow,ログインしてない場合はログインページに遷移
  def sign_in_required
    direct_to new_user_session_url unless user_signed_in?
  end

  def search_params
    params.require(:q).permit!
  end

    #ストロングパラメーター
  protected
    def configre_permitted_parameters
      @categories = Category.all
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end

end

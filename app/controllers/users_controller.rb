class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show] #ユーザーの個人ページはログインが必要
    before_action :sign_in_required, only: [:show] #ログイン後showページへ移動

  def index
    @users = User.all
    @categories = Category.all
  end

  def show
    @user = User.find(params[:id])
    @categories = Category.all
  end

end

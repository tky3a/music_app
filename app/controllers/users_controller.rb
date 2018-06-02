class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show] #ユーザーの個人ページはログインが必要

def index
  @users = User.all
end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end

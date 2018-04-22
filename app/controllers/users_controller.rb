class UsersController < ApplicationController
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

class FavoritesController < ApplicationController
  def create
    @user_id = current_user
    @video_id = Video.find(params[:id]).id
    @favorite = Favorite.new(user_id: @user_id, video_id: @video_id)

    @favorite.save
  end

  def destroy

  end
end

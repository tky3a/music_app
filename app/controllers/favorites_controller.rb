class FavoritesController < ApplicationController
  def create
    user_id = current_user.id
    video_id = Video.find(params[:id]).id
    favorite = Favorite.new(user_id: user_id, video_id: video_id)

    if favorite.save
      redirect_to video_path, id: video_id, flash: { :success => "success!" }
    else
      redirect_to video_path, id: video_id, flash: { :error => "error" }
    end

    # render layout: false
    # render :nothing => true, :status => :ok
  end

  def destroy

  end
end

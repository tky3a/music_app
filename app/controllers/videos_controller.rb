class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by(id: params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
      if @video.save
        # @category = Category.find_by(name: params[:category][:name])#categoryのnameを取得
        # @video_cate = VideoCategory.new(video_id: @video.id, category_id: @category.id)#video_idとcategory_id取得
        # if @video_cate.save
          redirect_to @video
        else
          render 'new'
        end
  end


 #strongparams
  private
    def video_params
        params.require(:video).permit(:artist_name, :youtube_id, :music_name, { category_ids: [] })
    end
end
